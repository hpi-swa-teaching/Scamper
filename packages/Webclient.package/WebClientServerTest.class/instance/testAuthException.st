tests - auth
testAuthException
	"Test client and server handling of digest auth"

	| resp client |
	server addService: '/test/auth' action:[:req | 
		server authenticate: req realm: 'test' methods: #(digest) do:[
			req send200Response: 'ok'
		].
	].

	client := WebClient new.
	self should:[client httpGet: self localHostUrl, '/test/auth'] 
		raise: WebAuthRequired.

	client allowAuth: false.
	self shouldnt:[resp := client httpGet: self localHostUrl, '/test/auth'] 
		raise: WebAuthRequired.
	self assert: resp code = 401.
