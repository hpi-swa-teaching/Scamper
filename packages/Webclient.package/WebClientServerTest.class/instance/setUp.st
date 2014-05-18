setup
setUp
	server := WebServer new listenOn: self port.
	server passwordAt: 'user' realm: 'test' put: 'pass'.
