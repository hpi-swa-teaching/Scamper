tests - redirect
testNo302Redirect
	"Ensure compliance with RFC 2616 rules prohibiting auto redirect 
	for 302/307 responses."

	| resp |
	server addService: '/302' action:[:req | 
		req send3xxResponse: '/bar' code: 302
	] methods: #('GET' 'PUT' 'POST' 'DELETE').
	server addService: '/307' action:[:req | 
		req send3xxResponse: '/bar' code: 307
	] methods: #('GET' 'PUT' 'POST' 'DELETE').
	server addService: '/bar' action:[:req | 
		req send200Response: 'redirect ok'
	] methods: #('GET' 'PUT' 'POST' 'DELETE').

	resp := WebClient httpGet: self localHostUrl, '/302'.
	self assert: resp code = 200.
	self assert: resp content = 'redirect ok'.

	resp := WebClient httpGet: self localHostUrl, '/307'.
	self assert: resp code = 200.
	self assert: resp content = 'redirect ok'.

	resp := WebClient httpPost: self localHostUrl, '/302' content: '' type: 'text/plain'.
	self assert: resp code = 302.
	resp := WebClient httpPost: self localHostUrl, '/307' content: '' type: 'text/plain'.
	self assert: resp code = 307.

	resp := WebClient httpPost: self localHostUrl, '/302' content: '' type: 'text/plain'.
	self assert: resp code = 302.
	resp := WebClient httpPost: self localHostUrl, '/307' content: '' type: 'text/plain'.
	self assert: resp code = 307.

	resp := WebClient httpPut: self localHostUrl, '/302' content: '' type: 'text/plain'.
	self assert: resp code = 302.
	resp := WebClient httpPut: self localHostUrl, '/307' content: '' type: 'text/plain'.
	self assert: resp code = 307.

	resp := WebClient httpDelete: self localHostUrl, '/302'.
	self assert: resp code = 302.
	resp := WebClient httpDelete: self localHostUrl, '/307'.
	self assert: resp code = 307.

