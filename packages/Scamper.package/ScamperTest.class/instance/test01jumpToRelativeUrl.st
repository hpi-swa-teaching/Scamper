initialize-release
test01jumpToRelativeUrl

	| port server scamper|
	
	"randomize port to minize risk of clushing tests"
	port := (10000 to: 50000) atRandom.
	server := WebServer new listenOn: port.

	"add landing page"
	server addService: '/' action:[:req | 
		req send200Response: 'ok' contentType: 'text/plain'
	].

	"add relative page"
	server addService: '/relative_page' action:[:req | 
		req send200Response: 'ok' contentType: 'text/plain'
	].

	scamper := Scamper openOnUrl: 'http://localhost:', port asString, '/'.
	scamper owner runStepMethods.
	
	(scamper model jumpToUrlAsync: 'relative_page') wait.
	scamper owner runStepMethods.
	
	self assert: (scamper model currentUrl asString) = ('http://localhost:', port asString, '/relative_page').
	scamper delete.

	server ifNotNil:[server destroy]