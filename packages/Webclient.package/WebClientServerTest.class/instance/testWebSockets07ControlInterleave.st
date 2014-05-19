tests - websockets
testWebSockets07ControlInterleave
	"Test the WebSocket 07 control interleave"

	| sema cws resp ping pong |
	ping := 'Hello Ping'.
	server addService: '/websockets' action:[:req | | sws |
		sws := req asWebSocket.
		sws onMessage:[:sdata| sws send: sdata].
		sws onPing:[:sdata| sws pong: sdata].
		sws onError:[:ex| 
			Transcript cr; show: ex description.
			Transcript cr; show: ex signalerContext longStack.
		].
		sws run.
	].

	sema := Semaphore new.
	cws := WebClient webSocket07: self localHostUrl,'/websockets' protocol: nil.
	cws onMessage:[:cdata| resp := cdata. sema signal].
	cws onPong:[:cdata| pong := cdata asString. sema signal.].
	cws fork.

	cws send: 'Über-cool'.
	sema wait.
	self assert: (resp = 'Über-cool').

	cws firstFragment: 'First,'.
	cws nextFragment: 'Next,'.
	cws lastFragment: 'Last.'.
	sema wait.
	self assert: (resp = 'First,Next,Last.').
	self deny: sema isSignaled.

	resp := nil.
	cws firstFragment: 'First,'.
	cws ping: ping.
	sema wait.

	self assert: ping = pong. "i.e., roundtrip finished"
	self assert: resp == nil. "i.e., fragment not delivered yet"
	self deny: sema isSignaled.

	cws nextFragment: 'Next,'.
	cws lastFragment: 'Last.'.
	sema wait.
	self assert: (resp = 'First,Next,Last.').


	cws close.