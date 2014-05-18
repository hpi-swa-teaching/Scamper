tests - websockets
testWebSockets
	"Test the WebSocket interface"

	self testWebSockets:[
		WebClient webSocketTo: self localHostUrl,'/websockets'.
	].
