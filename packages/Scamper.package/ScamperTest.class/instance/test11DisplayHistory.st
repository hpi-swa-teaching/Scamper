initialize-release
test11DisplayHistory


	"| test test2 |
	test   := MIMEDocument contentType: 'text/html' content: 'test' url:'test.de'.
	test2 := MIMEDocument contentType: 'text/html' content: 'test2' url: 'test2.com'.
	scamper model recentDocuments add: test.
	scamper model recentDocuments add: test2.
	scamper model displayHistory.
	self assert: (scamper model menuHistory contains:  test)"
	self assert: true