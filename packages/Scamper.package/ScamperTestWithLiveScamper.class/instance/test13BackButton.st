initialize-release
test13BackButton

	| mock | 
	scamper model currentUrlIndex: 0.
	mock := scamper model back.	
	scamper model currentUrlIndex: 2.
	mock := scamper model back.
	self assert: (scamper model currentUrlIndex = 1)