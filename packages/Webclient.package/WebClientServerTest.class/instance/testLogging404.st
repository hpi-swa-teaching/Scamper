tests - misc
testLogging404
	"Test logging a 404 response"

	| resp client log |
	server accessLog: String new writeStream.
	client := WebClient new.
	client accessLog: String new writeStream.
	[resp := client httpGet: self localHostUrl] ensure:[client close].

	self assert: resp code = 404.

	log := server accessLog contents.
	self assert: ('127.0.0.1 - - [*] "GET / HTTP/1.1" 404 145', String cr match: log).

	log := client accessLog contents.
	self assert: ('localhost - - [*] "GET / HTTP/1.1" 404 145', String cr match: log).
