tests - misc
testSimpleServerAction
	"Test client and server handling simple defaults"

	| resp srvr |
	server addService: '/test' action:[:req |
		srvr := req server.
		req send200Response: 'ok'].

	resp := WebClient httpGet: self localHostUrl, '/test'.
	self assert: srvr notNil.
	self assert: resp code = 200.
	self assert: resp content = 'ok'.
