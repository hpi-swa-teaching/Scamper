tests - websockets
testWebSockets07
	"Test the WebSocket interface"

	self testWebSockets:[
		WebClient webSocket07: self localHostUrl,'/websockets' protocol: 'sample'
	].
