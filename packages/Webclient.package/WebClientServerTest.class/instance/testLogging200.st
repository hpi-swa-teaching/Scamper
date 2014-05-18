tests - misc
testLogging200
	"Test logging a regular 200 a-ok response"

	| resp client log |
	server addService: '/test' action:[:req | req send200Response: 'ok'].
	server accessLog: String new writeStream.

	client := WebClient new.
	client accessLog: String new writeStream.
	[resp := client httpGet: self localHostUrl, '/test'] ensure:[client close].

	self assert: resp code = 200.

	log := server accessLog contents.
	self assert: ('127.0.0.1 - - [*] "GET /test HTTP/1.1" 200 2', String cr match: log).

	log := client accessLog contents.
	self assert: ('localhost - - [*] "GET /test HTTP/1.1" 200 2', String cr match: log).
