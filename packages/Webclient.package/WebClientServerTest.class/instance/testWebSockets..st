tests - websockets
testWebSockets: aBlock
	"Test the WebSocket interface"

	| sema cws resp sws |
	server addService: '/websockets' action:[:req |
		sws := req asWebSocket.
		sws onError:[:ex| 
			Transcript cr; show: ex description.
			Transcript cr; show: ex signalerContext longStack.
		].
		sws onMessage:[:sdata| sws send: 'Response: ', sdata].
		sws run.
	].

	sema := Semaphore new.
	cws := aBlock value.
	cws onMessage:[:cdata| resp := cdata. sema signal].
	cws onClose:[resp := nil. sema signal].
	cws fork.

	cws send: 'Testing, one, two'.
	sema wait.
	self assert: (resp = 'Response: Testing, one, two').

	cws close.
	sema wait.
	self assert: (resp = nil).
