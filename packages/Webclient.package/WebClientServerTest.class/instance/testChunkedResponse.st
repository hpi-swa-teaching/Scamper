tests - chunked
testChunkedResponse
	"Test HTTP response using chunked transfer-encoding"

	| resp |
	server addService: '/test' action:[:req | 
		req sendResponse: 200 chunked:[:response|
			response nextChunkPut: 'Hello'.
			response nextChunkPut: 'World'.
			response nextChunkPut: 'Dude'.
		].
	].

	resp := WebClient httpGet: self localHostUrl, '/test'.
	self assert: resp code = 200.
	self assert: resp content = 'HelloWorldDude'.
	self assert: (resp headerAt: 'Transfer-Encoding') = 'chunked'.