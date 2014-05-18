tests - websockets
testWebSocketHash07
	"self run: #testWebSocketHash07"
	"From http://tools.ietf.org/html/draft-ietf-hybi-thewebsocketprotocol-07"

	| hash key |
	key := 'dGhlIHNhbXBsZSBub25jZQ=='.
	hash := WebUtils webSocketHash07: key.
	self assert: hash = 's3pPLMBiTxaQ9kYGzzhZRbK+xOo='.