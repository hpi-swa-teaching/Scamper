tests - cookies
testCookieExpiryParsing
	"Test parsing of cookie expiry dates"

	| exp a b |
	exp := DateAndTime date: Date today time: Time now.
	a := WebCookie new.
	a name: 'test'.
	a expiry: exp.
	b := WebCookie new readFrom: a asString readStream.
	self assert: b expiry = exp asUTC.

	b := WebCookie new readFrom: (a asString copyReplaceAll: '-' with: ' ') readStream.
	self assert: b expiry = exp asUTC.
