tests - websockets
testWebSocketsFraming
	"Test the WebSocket 00 framing"

	| sema cws resp frameType |
	server addService: '/websockets' action:[:req | | sws |
		sws := req asWebSocket.
		sws onMessage:[:sdata :type| sws send: sdata type: type].
		sws onError:[:ex| 
			Transcript cr; show: ex description.
			Transcript cr; show: ex signalerContext longStack.
		].
		sws run.
	].

	sema := Semaphore new.
	cws := WebClient webSocket00: self localHostUrl,'/websockets' protocol: nil.
	cws onMessage:[:cdata :type| resp := cdata. frameType := type. sema signal].
	cws onClose:[resp := nil. frameType := 255. sema signal].
	cws fork.

	cws send: 'Über-cool'.
	sema wait.
	self assert: (resp = 'Über-cool').
	self assert: (frameType = 0).

	cws send: 'Über-funny' type: 15.
	sema wait.
	self assert: (resp = 'Über-funny').
	self assert: (frameType = 15).

	cws send: (String new: 100) type: 0.
	sema wait.
	self assert: (resp = (String new: 100)).
	self assert: (frameType = 0).

	cws send: (ByteArray new: 100) type: 130.
	sema wait.
	self assert: (resp = (ByteArray new: 100)).
	self assert: (frameType = 130).

	cws close.
	sema wait.
	self assert: (resp = nil).
	self assert: (frameType = 255).