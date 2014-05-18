tests - redirect
testRedirectTrailingSlash
	"Special test to ensure that a redirect from /foo to /foo/ works"

	| resp client |
	server addService: '/foo' action:[:req | 
		req send302Response: '/foo/'
	].
	server addService: '/foo/' action:[:req | 
		req send200Response: 'redirect ok'
	].

	client := WebClient new.
	resp := client httpGet: self localHostUrl, '/foo'.
	self assert: resp code = 200.
	self assert: resp content = 'redirect ok'.
