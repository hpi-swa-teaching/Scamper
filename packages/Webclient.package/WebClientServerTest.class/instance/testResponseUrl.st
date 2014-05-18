tests - misc
testResponseUrl
	"Tests that the response url is pointing to the final location"

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
	self assert: resp url = (self localHostUrl, '/bar').

	client := WebClient new.
	client allowRedirect: false.
	resp := client httpGet: self localHostUrl, '/foo'.
	self assert: resp code = 302.
	self assert: resp url = (self localHostUrl, '/foo').
