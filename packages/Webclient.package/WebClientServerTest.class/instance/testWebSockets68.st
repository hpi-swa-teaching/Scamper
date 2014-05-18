tests - websockets
testWebSockets68
	"Test the WebSocket interface"

	self testWebSockets:[
		WebClient webSocket68: self localHostUrl,'/websockets' protocol: 'sample'.
	].
