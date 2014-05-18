tests - methods
testHttpOptions
	"Test for handling the OPTIONS request"

	| resp |
	server addService: '/delete' action:[:req | 
		req send200Response: req method.
	] methods: {'GET'. 'PUT'. 'DELETE'}.

	resp := WebClient httpOptions: self localHostUrl, '/*'.
	self assert: resp code = 200.
	self assert: resp content = ''.
	self assert: (resp headerAt: 'allow') = 'HEAD,TRACE,OPTIONS,GET,POST'.

	resp := WebClient httpOptions: self localHostUrl, '/delete'.
	self assert: resp code = 200.
	self assert: resp content = ''.
	self assert: (resp headerAt: 'allow') = 'HEAD,TRACE,OPTIONS,GET,PUT,DELETE'.