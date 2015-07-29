initialize-release
test06isInternBrowser

	|url1 url2|
	url1 := 'browser:something' asUrl.
	url2 := 'something:something' asUrl.

	self assert: (scamper model isInternBrowserUrl: url1); 
		 assert: (scamper model isInternBrowserUrl: url2) not.
