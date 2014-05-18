tests - redirect
testAuthRedirectSession
	"Run a test for a full auth-redirect-cookie loop"

	| loginOK finalUrl finalFields firstRedirect client resp |
	server addService: '/login' action:[:req | 
		server authenticate: req realm: 'test' methods: #(digest) do:[ | id |
			loginOK := true.
			server sessionAt: (id := UUID new hex) put: ''.
			req send302Response: (req fields at: 'url' ifAbsent:['/']) 
				do:[:reply| reply setCookie: 'session' value: id path: '/']]].
	server addService: '/action' action:[:req | 
		(server sessionAt: (req cookieAt: 'session')) ifNil:[
			firstRedirect := true.
			req send302Response: '/login?url=', req rawUrl encodeForHTTP.
		] ifNotNil:[
			finalUrl := req url.
			finalFields := req fields.
			req send200Response: 'ok'.
		].
	].
	firstRedirect := loginOK := false.
	server passwordAt: 'squeak' realm: 'test' put: 'foo'.
	client := WebClient new.
	client username: 'squeak'; password: 'foo'.
	resp := client httpGet: self localHostUrl, '/action/foo/bar?string=hello&number=42'.

	self assert: resp code = 200.
	self assert: firstRedirect.
	self assert: loginOK.
	self assert: finalUrl = '/action/foo/bar'.
	self assert: finalFields size = 2.
	self assert: (finalFields at: 'string') = 'hello'.
	self assert: (finalFields at: 'number') = '42'.
