tests - chunked
testChunkedRequest
	"Test HTTP post using chunked transfer-encoding"

	| resp request |
	server addService: '/test' action:[:req | 
		request := req.
		req send200Response: req content].

	resp := WebClient 
				httpPostChunked: self localHostUrl, '/test' 
				content:[:req|
					req nextChunkPut: 'Hello'.
					req nextChunkPut: 'World'.
					req nextChunkPut: 'Dude'.
				] type: nil.

	self assert: resp code = 200.
	self assert: resp content = 'HelloWorldDude'.
	self assert: (request headerAt: 'Transfer-Encoding') = 'chunked'