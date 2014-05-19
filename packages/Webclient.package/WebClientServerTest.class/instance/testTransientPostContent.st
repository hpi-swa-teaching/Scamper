tests - misc
testTransientPostContent
	"Ensure that WebRequest>>content doesn't close the socket 
	when used in a transient post request"

	| resp client |
	server addService: '/test' action:[:req |
		req send200Response: req content].

	client := WebClient new.
	resp := client httpPost: self localHostUrl, '/test' content:'hello' type: nil do:[:req|
		req protocol: 'HTTP/1.0'
	].
	self assert: resp code = 200.
	self assert: resp content = 'hello'.
