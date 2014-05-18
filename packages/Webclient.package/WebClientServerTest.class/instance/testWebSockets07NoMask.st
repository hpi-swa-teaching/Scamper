tests - websockets
testWebSockets07NoMask
	"Test the WebSocket interface"

	self testWebSockets:[
		(WebClient webSocket07: self localHostUrl,'/websockets' protocol: 'sample')
			masking: false;
			yourself].
