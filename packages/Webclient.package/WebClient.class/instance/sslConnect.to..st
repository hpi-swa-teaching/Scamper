initialize
sslConnect: stream to: lastServer
	"Do the SSL handshake, use SNI if available"
	(stream respondsTo: #sslConnectTo:)
		ifTrue: [stream sslConnectTo: lastServer]
		ifFalse: [stream sslConnect].