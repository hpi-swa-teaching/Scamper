tests - methods
testHttpHead
	"Test for handling a HEAD request"

	| resp |
	server addService: '/foo' action:[:req | 
		req send302Response: '/bar'
	].
	server addService: '/bar' action:[:req | 
		req send200Response: 'ok'
	].

	resp := WebClient httpHead: self localHostUrl, '/bar'.
	self assert: resp code = 200.
	self assert: resp content = ''.
	self deny: resp contentStream isDataAvailable..

	resp := WebClient httpHead: self localHostUrl, '/foo'.
	self assert: resp code = 200.
	self assert: resp content = ''.
