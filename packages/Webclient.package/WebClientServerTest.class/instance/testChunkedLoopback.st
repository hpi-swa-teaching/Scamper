tests - chunked
testChunkedLoopback
	"Test HTTP loopback streaming using chunked transfer-encoding"

	| queue response |
	queue := SharedQueue new.
	server addService: '/recv' action:[:req |

		"The /recv service establishes the write-end for the server.
		In a real environment we would access protect the request
		and also pass a token to be used to link the incoming /send
		request from the client."

		req sendResponse: 200 chunked:[:writeEnd|
			| chunk |
			"There is no reason to wait for the client to send a request,
			the protocol is entirely freestyle. Send something just because
			we can"
			writeEnd nextChunkPut: 'Initial response'.
			"And from here on echo any incoming data"
			[chunk := queue next.
			chunk == nil] whileFalse:[writeEnd nextChunkPut: chunk].
			"And some final data"
			writeEnd nextChunkPut: 'Final response'.
		].
	] methods: #('GET'). "only allow GET requests"

	server addService: '/send' action:[:req |

		"The /send service establishes the read-end for the server.
		Simply read the chunks as they come in and stick them in
		our loopback queue to send them back to the client."

		| chunk |
		[chunk := req nextChunk.
		chunk == nil] whileFalse:[queue nextPut: chunk].
		queue nextPut: nil. "end conversation"
		req send200Response: 'ok'.
	] methods: #('POST'). "only allow POST requests"

	"Establish the server response stream"
	response := WebClient new httpGet: self localHostUrl, '/recv'.
	self assert: response code = 200.
	self assert: (response headerAt: 'Transfer-Encoding') = 'chunked'.
	self assert: response nextChunk equals: 'Initial response'.

	"Establish the client request stream"
	WebClient 
		httpPostChunked: self localHostUrl, '/send'
		content:[:request|
			"We've set up both ends, try our loopback server"
			request nextChunkPut: 'Hello World'.
			self assert: response nextChunk equals: 'Hello World'.
			request nextChunkPut: 'The answer is 42'.
			self assert: response nextChunk equals: 'The answer is 42'.
		] type: nil.

	self assert: response nextChunk equals: 'Final response'.
	self assert: response nextChunk equals: nil.
