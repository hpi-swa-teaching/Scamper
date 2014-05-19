tests - misc
testServerDestroy
	"Tests that connections get nuked when server gets killed"
	
	| client resp |
	server addService: '/test' action:[:req | req send200Response: 'ok'].
	client := WebClient new.
	resp := client httpGet: self localHostUrl, '/test'.

	self assert: resp code = 200.
	self assert: resp content = 'ok'.
	self assert: client isConnected.
	self assert: server connections size = 1.

	server destroy.

	"Depending on OS the signal may not be delivered synchronously
	and raise ConnectionClosed in the (signaling) peek. Give it a bit of 
	time to deal with the close."
	(Delay forMilliseconds: 100) wait.

	"Make stream non-blocking otherwise peek can blow up in our face"
	resp contentStream shouldSignal: false.
	self assert: resp contentStream peek == nil.
	self deny: client isConnected
