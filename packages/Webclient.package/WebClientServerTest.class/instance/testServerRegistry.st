tests - misc
testServerRegistry
	"Ensure that the WebServer registry functions as intended"

	| serverA serverB |
	["Create a new server"
	serverA := WebServer forUrl: 'http://foo.bar.com'.
	serverA listenOn: self port+1.
	self assert: serverA notNil.
	self assert: serverA isRunning.

	"Look it up again"
	serverB := WebServer forUrl: 'http://foo.bar.com'.
	self assert: serverA == serverB.

	"Override with a new one (should shutdown serverA)"
	serverB := WebServer newForUrl: 'http://foo.bar.com'.
	self deny: serverA == serverB.
	self deny: serverA isRunning.

	"Destroy (should de-register serverB)"
	serverB destroy.
	self assert: (WebServer forUrl: 'http://foo.bar.com' ifAbsent:[nil]) == nil
	] ensure:[
		serverA ifNotNil:[serverA destroy].
		serverB ifNotNil:[serverB destroy].
	].