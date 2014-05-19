tests - cookies
testInvalidCookies
	"Test client and server handling of cookies"

	| resp client |
	"Sends the testcookie back if it's set"
	server addService: '/' action:[:req | 
		req send200Response: (req cookieAt: 'testcookie').
	].

	"Sets the cookie"
	server addService: '/setcookie' action:[:req | | domain path expires secure |
		domain := req fields at: 'domain' ifAbsent:[nil].
		path := req fields at: 'path' ifAbsent:[nil].
		expires := req fields at: 'expires' ifAbsent:[nil].
		secure := req fields at: 'secure' ifAbsent:['false'].
		req send200Response: 'ok' contentType: 'text/plain'  do:[:reply| 
			reply setCookie: 'testcookie' value: '123' path: path 
				expires: expires domain: domain secure: secure = 'true'.
		]
	].

	server addService: '/clearcookie' action:[:req |
		req send200Response: 'ok' contentType: 'text/plain'  do:[:reply| 
			reply setCookie: 'testcookie' value: '123' path: '/' 
				expires: DateAndTime new domain: nil secure: false.
		]
	].

	client := WebClient new.
	resp := client httpGet: self localHostUrl, '/setcookie?path=/'.
	self assert: resp code = 200.
	self assert: resp content = 'ok'.
	self assert: (resp setCookieAt: 'testcookie') value = '123'.
	resp := client httpGet: self localHostUrl, '/'.
	self assert: resp code = 200.
	self assert: resp content = '123'.

	resp := client httpGet: self localHostUrl, '/clearcookie'.
	self assert: resp code = 200.
	resp := client httpGet: self localHostUrl, '/'.
	self assert: resp code = 200.
	self deny: resp content = '123'.

	client := WebClient new.
	resp := client httpGet: self localHostUrl, '/setcookie?domain=.foo.com'.
	self assert: resp code = 200.
	self assert: resp content = 'ok'.
	self assert: (resp setCookieAt: 'testcookie') value = '123'.

	resp := client httpGet: self localHostUrl, '/'.
	self assert: resp code = 200.
	self deny: resp content = '123'.

	client := WebClient new.
	resp := client httpGet: self localHostUrl, '/setcookie?domain=.com'.
	self assert: resp code = 200.
	self assert: resp content = 'ok'.
	self assert: (resp setCookieAt: 'testcookie') value = '123'.
	resp := client httpGet: self localHostUrl, '/'.
	self assert: resp code = 200.
	self deny: resp content = '123'.

	client := WebClient new.
	resp := client httpGet: self localHostUrl, '/setcookie?secure=true'.
	self assert: resp code = 200.
	self assert: resp content = 'ok'.
	self assert: (resp setCookieAt: 'testcookie') value = '123'.
	resp := client httpGet: self localHostUrl, '/'.
	self assert: resp code = 200.
	self deny: resp content = '123'.
