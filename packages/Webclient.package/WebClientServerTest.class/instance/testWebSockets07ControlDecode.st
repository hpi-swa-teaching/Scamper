tests - websockets
testWebSockets07ControlDecode
	"Tests from section 4.7 of the WebSockets spec"

	| ws ping pong |
	ws := WebSocket07 new.
	ws onPing:[:msg| ping := msg asString].
	ws onPong:[:msg| pong := msg asString].

	ping := pong := nil.
	ws readFrameFrom:
		#[16r89 16r05 16r48 16r65 16r6C 16r6C 16r6F] readStream.
		"contains a body of 'Hello', but the contents of the body are arbitrary)"
	self assert: ping = 'Hello'.
	self assert: pong = nil.

	ping := pong := nil.
	ws readFrameFrom:
		#[16r8A 16r05 16r48 16r65 16r6C 16r6C 16r6F] readStream.
		"contains a body of 'Hello', matching the body of the ping)"
	self assert: ping = nil.
	self assert: pong = 'Hello'.
