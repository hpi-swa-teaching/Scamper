tests - auth
testDigestAuth
	"Test client and server handling of digest auth"

	| resp reqHeader |
	server addService: '/test/auth' action:[:req | 
		server authenticate: req realm: 'test' methods: #(digest) do:[
			reqHeader := req headerAt: 'Authorization'.
			req send200Response: 'ok'
		].
	].

	resp := WebClient new httpGet: self localHostUrl, '/test/auth'.
	self assert: resp code = 401.

	[resp := WebClient httpGet: self localHostUrl, '/test/auth']
		on: WebAuthRequired do:[:ex| ex username: 'squeak' password: 'squeak'].
	self assert: resp code = 401.

	[resp := WebClient httpGet: self localHostUrl, '/test/auth']
		on: WebAuthRequired do:[:ex| ex username: 'user' password: 'pass'].
	self assert: resp code = 200.
	self assert: resp content = 'ok'.
	self assert: (reqHeader beginsWith: 'Digest ').
