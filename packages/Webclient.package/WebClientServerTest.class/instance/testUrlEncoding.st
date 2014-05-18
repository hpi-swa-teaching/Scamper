tests - misc
testUrlEncoding
	"Test the default URL encoding behavior"
	| resp |
	server addService: '/hello world' action:[:req|
		req send200Response: 'ok'.
	].
	resp := WebClient httpGet: self localHostUrl, '/hello%20world'.
	self assert: resp code = 200.
	self assert: resp content = 'ok'.

	resp := WebClient httpGet: (WebUtils urlEncode: self localHostUrl, '/hello world').
	self assert: resp code = 200.
	self assert: resp content = 'ok'.
