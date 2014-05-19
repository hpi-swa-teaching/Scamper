tests - methods
testHttpDelete
	"Test for handling a DELETE request"

	| resp |
	server addService: '/nodelete' action:[:req | 
		req send200Response: 'ok'.
	].
	server addService: '/delete' action:[:req | 
		req send200Response: req method.
	] methods: {'GET'. 'PUT'. 'DELETE'}.

	resp := WebClient httpGet: self localHostUrl, '/nodelete'.
	self assert: resp code = 200.
	resp := WebClient httpDelete: self localHostUrl, '/nodelete'.
	self assert: resp code = 405.

	resp := WebClient httpGet: self localHostUrl, '/delete'.
	self assert: resp code = 200.
	resp := WebClient httpDelete: self localHostUrl, '/delete'.
	self assert: resp code = 200.

	resp := WebClient httpPost: self localHostUrl, '/delete' content:'' type: nil.
	self assert: resp code = 405.
