tests - misc
testNestedAction
	"Test handling of nested actions"

	| resp |
	server addService: '/test' action:[:req | req send200Response: 'ok'].
	server addService: '/test/42' action:[:req | req send200Response: '42'].

	resp := WebClient httpGet: self localHostUrl, '/test'.
	self assert: resp code = 200.
	self assert: resp content = 'ok'.

	resp := WebClient httpGet: self localHostUrl, '/test/42'.
	self assert: resp code = 200.
	self assert: resp content = '42'.

	resp := WebClient httpGet: self localHostUrl, '/test/43'.
	self assert: resp code = 200.
	self assert: resp content = 'ok'.
