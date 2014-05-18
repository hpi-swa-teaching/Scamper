tests - redirect
testRedirectLoop
	"Test client handling of redirect loops"

	| resp |
	server addService: '/foo' action:[:req | 
		req send302Response: '/bar'
	].
	server addService: '/bar' action:[:req | 
		req send302Response: '/foo'
	].

	resp := WebClient httpGet: self localHostUrl, '/foo'.
	self assert: resp code = 302.
