tests - misc
testListenOnInterface
	"Test that listening on a particular interface listens only on that interface"

	| localHostAddr resp localHostName client |
	server destroy.		"kill old server"

	localHostAddr := NetNameResolver localHostAddress.
	localHostAddr asByteArray = #(127 0 0 1) asByteArray ifTrue:[^self]. "skip test"

	localHostName := NetNameResolver stringFromAddress: localHostAddr.

	server := WebServer new listenOn: self port interface: localHostAddr.
	server addService: '/' action:[:req| req send200Response: 'ok'].

	client := WebClient new.
	client timeout: 1.
	self should:[resp := client httpGet: self localHostUrl, '/test'] raise: Error.

	resp := client httpGet: 'http://', localHostName, ':', self port asString, '/test'.
	self assert: resp code = 200.
	self assert: resp content = 'ok'.
