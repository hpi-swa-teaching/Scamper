testing
test06isInternBrowser

	|url1 url2|
	
	scamper := Scamper new.
	url1 := 'browser:something' asUrl.
	url2 := 'something:something' asUrl.

	self assert: (scamper isInternBrowserUrl: url1); 
		 assert: (scamper isInternBrowserUrl: url2) not.
