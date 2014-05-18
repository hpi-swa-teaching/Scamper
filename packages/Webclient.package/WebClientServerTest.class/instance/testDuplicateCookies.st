tests - cookies
testDuplicateCookies
	"Tests deleting cookies in WebClient"

	| resp client |
	"Sends the testcookie back if it's set"
	server addService: '/' action:[:req | 
		req send200Response: (req headersAt: 'cookie') size asString.
	].

	"Sets the cookie"
	server addService: '/cookie/set' action:[:req | 
		req send200Response: 'ok' contentType: 'text/plain' 
			do:[:reply| reply setCookie: 'testcookie' value: '123' path: '/cookie']].

	client := WebClient new.
	resp := client httpGet: self localHostUrl, '/cookie/set'.
	self assert: resp code = 200.
	self assert: resp content = 'ok'.
	self assert: (resp setCookieAt: 'testcookie') value = '123'.

	resp := client httpGet: self localHostUrl, '/cookie/set'.
	resp := client httpGet: self localHostUrl, '/cookie/set'.

	resp := client httpGet: self localHostUrl, '/cookie/test'.
	self assert: resp code = 200.
	self assert: resp content = '1'.
