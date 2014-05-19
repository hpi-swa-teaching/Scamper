tests - misc
testServerError
	"Test server handling of errors"

	| resp |
	server addService: '/test' action:[:req | self error: 'boom'].

	resp := WebClient httpGet: self localHostUrl, '/test'.
	self assert: resp code = 500.
