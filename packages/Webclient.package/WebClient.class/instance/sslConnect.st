initialize
sslConnect
	"Do the SSL handshake"
	"Connect the client to a web server"

	| sqSSL |
	proxyServer ifNotNil:[ | resp |
		"If we have a proxy server, do the proxy connect"
		resp := self proxyConnect.
		resp isSuccess ifFalse:[^resp].
	].

	sqSSL := Smalltalk at: #SqueakSSL ifAbsent:[self error: 'SqueakSSL is missing'].
	"Convert the stream to a secure stream"
	stream := sqSSL secureSocketStream on: stream socket.
	stream timeout: timeout.
	self sslConnect: stream to: lastServer.
	"And cert verification
	(unless on OSX, where this does not work yet)"
	WebUtils platformName = 'Mac OS'
		ifFalse: [stream verifyCert: self serverName].
	^ nil"indicating success"
