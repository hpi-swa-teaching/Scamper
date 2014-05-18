tests - websockets
testWebSockets00
	"Test the WebSocket interface"

	self testWebSockets:[
		WebClient webSocket00: self localHostUrl,'/websockets' protocol: 'sample'
	].
