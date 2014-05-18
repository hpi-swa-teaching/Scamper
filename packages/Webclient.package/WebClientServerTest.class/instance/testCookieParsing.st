tests - cookies
testCookieParsing
	"Test client and server handling of cookies"

	| resp client |
	"Sends the testcookie back if it's set"
	server addService: '/' action:[:req |
		req send200Response:(String streamContents:[:s|
			req cookiesDo:[:key :val| s nextPutAll: key, '=', val; cr].
		]).
	].

	client := WebClient new.
	resp := client httpGet: self localHostUrl,'/cookieA' do:[:req|
		req headerAt: 'Cookie' put: 'foo=bar; key=value, x=32, y=55'.
	].
	resp content; close.
	self assert: resp code = 200.
	self assert: resp content 
		equals: 	'foo=bar', String cr,
				'key=value', String cr,
				'x=32', String cr,
				'y=55', String cr.

	client := WebClient new.
	resp := client httpGet: self localHostUrl,'/cookieA' do:[:req|
		req addHeader: 'Cookie' value: 'foo=bar'.
		req addHeader: 'Cookie' value: 'key=value'.
		req addHeader: 'Cookie' value: 'x=32'.
		req addHeader: 'Cookie' value: 'y=55'.
	].
	resp content; close.
	self assert: resp code = 200.
	self assert: resp content 
		equals: 	'foo=bar', String cr,
				'key=value', String cr,
				'x=32', String cr,
				'y=55', String cr.
