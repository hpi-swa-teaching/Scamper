initialize-release
test12ForwardButton

	| mock mock2 mock3| 
	
	scamper model currentUrlIndex: 3.
	mock := scamper model forward.
	self assert: (mock isKindOf: Scamper).
	
	mock2   := MIMEDocument contentType: 'text/html' content: 'test'.
	mock3 := MIMEDocument contentType: 'text/html' content: 'test2'.
	scamper model recentDocuments add: mock2.
	scamper model recentDocuments add: mock3.
	scamper model currentUrlIndex: 1.
	mock := scamper model forward.
	self assert: (scamper model currentUrlIndex = 2)
	
	
	