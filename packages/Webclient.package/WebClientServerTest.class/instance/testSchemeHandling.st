tests - https
testSchemeHandling
	"Ensure that we handle only http and https schemes"

	self shouldnt:[WebClient httpGet: 'http://localhost:', self port asString] raise: Error.
	self should:[WebClient httpGet: 'ftp://localhost:', self port asString] raise: Error.

