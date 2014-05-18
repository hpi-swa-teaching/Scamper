tests - websockets
testDecodeWebSocketKey
	"Ensure that decoding the Sec-WebSocket-Key fields works properly."

	| key1 key2 data |
	key1 := 155712099.
	key2 := 173347027.
	data := 'Tm[K T2u'.

	self assert: (WebUtils extractWebSocketKey: '18x 6]8vM;54 *(5:  {   U1]8  z [  8') = key1.
	self assert: (WebUtils extractWebSocketKey: '1_ tx7X d  <  nw  334J702) 7]o}` 0') = key2.

	self assert: (WebUtils webSocketHandshake: key1 with: key2 with: data) asString = 'fQJ,fN/4F4!~K~MH'.