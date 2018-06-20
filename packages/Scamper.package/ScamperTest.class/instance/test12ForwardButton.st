initialize-release
test12ForwardButton

	| mock test test2| 
	
	scamper model currentUrlIndex: 3.
	mock := scamper model forward.
	self assert: (mock isKindOf: Scamper).
	
	test   := MIMEDocument contentType: 'text/html' content: 'test'.
	test2 := MIMEDocument contentType: 'text/html' content: 'test2'.
	scamper model recentDocuments add: test.
	scamper model recentDocuments add: test2.
	scamper model currentUrlIndex: 1.
	mock := scamper model forward.
	self assert: (scamper model currentUrlIndex = 2)
	
	
	