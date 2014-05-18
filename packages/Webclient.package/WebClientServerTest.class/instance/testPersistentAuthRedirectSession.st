tests - redirect
testPersistentAuthRedirectSession
	"Run a test for a full auth-redirect-cookie loop.
	Ensure that the connection is persistent for the entire loop."

	| loginOK finalUrl finalFields firstRedirect client resp url |
	server addService: '/login' action:[:req | 
		server authenticate: req realm: 'test' methods: #(digest) do:[ | id |
			loginOK := true.
			server sessionAt: (id := UUID new hex) put: ''.
			req send302Response: (req fields at: 'url' ifAbsent:['/']) unescapePercents
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
	client allowRedirect: false.
	url :=  self localHostUrl, '/action/foo/bar?string=hello&number=42'.
	[[resp := client httpGet: url] on: WebAuthRequired 
		do:[:ex| 	self assert: client == ex client.
				self assert: client isConnected.
				ex username: 'squeak' password: 'foo'.].
	resp code = 302] whileTrue:[
		self assert: client isConnected.
		url := resp headerAt: 'Location'.
	].
	self assert: client isConnected.
	self assert: resp code = 200.
	self assert: firstRedirect.
	self assert: loginOK.
	self assert: finalUrl = '/action/foo/bar'.
	self assert: finalFields size = 2.
	self assert: (finalFields at: 'string') = 'hello'.
	self assert: (finalFields at: 'number') = '42'.
