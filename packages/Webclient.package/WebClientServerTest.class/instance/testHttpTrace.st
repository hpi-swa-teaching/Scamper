tests - methods
testHttpTrace
	"Test for handling the TRACE request"

	| resp |
	resp := WebClient httpTrace: self localHostUrl, '/bar'.
	self assert: resp code = 200.
	self assert: resp contentType = 'message/http'.
	self assert: resp content =
		( 'TRACE /bar HTTP/1.1', String crlf,
		'user-agent: ', WebClient new userAgent, String crlf,
		'host: localhost:', self port printString, String crlf, String crlf).
