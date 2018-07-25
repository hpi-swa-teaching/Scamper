initialize-release
test12ForwardButton

	| doc1 doc2 | 
	
	doc1   := MIMEDocument contentType: 'text/html' content: 'test'.
	doc2 := MIMEDocument contentType: 'text/html' content: 'test2'.
	scamper model recentDocuments add: doc1.
	scamper model recentDocuments add: doc2.
	scamper model currentUrlIndex: 1.
	scamper model forward.
	self assert: scamper model currentUrlIndex equals:  2.
	
	
	
	