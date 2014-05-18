tests - redirect
testRedirect
	"Test client and server handling of redirects"

	| resp client |
	server addService: '/foo' action:[:req | 
		req send302Response: '/bar'
	].
	server addService: '/bar' action:[:req | 
		req send200Response: 'redirect ok'
	].

	client := WebClient new.
	resp := client httpGet: self localHostUrl, '/foo'.
	self assert: resp code = 200.
	self assert: resp content = 'redirect ok'.

	client allowRedirect: false.
	resp := client httpGet: self localHostUrl, '/foo'.
	self assert: resp code = 302.

	client allowRedirect: true.
	resp := client httpGet: self localHostUrl, '/foo'.
	self assert: resp code = 200.
	self assert: resp content = 'redirect ok'.
