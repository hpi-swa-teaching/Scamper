initialize-release
test04HandleHttpStatusCode
	| statusCode testUrl|
	Transcript show: 'test04'.
	testUrl:='www.test.com'.
	statusCode:= Scamper new handleHttpStatusCode: 200 withURL: testUrl.
	self  assert: statusCode equals: 'OK'.

	statusCode:= Scamper new handleHttpStatusCode: 404 withURL: testUrl.
	self  assert: statusCode equals: '<html><head><title>404 Not Found</title></head><body><h1>404 Not Found</h1><p>The requested URL "', testUrl,'" was not found on this server.</p></body></html>'..