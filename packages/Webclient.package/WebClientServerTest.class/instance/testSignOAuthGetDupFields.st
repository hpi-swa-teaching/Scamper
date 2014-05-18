tests - oauth
testSignOAuthGetDupFields
	"Ensure that we can sign a request with duplicate fields correctly using OAuth.
	Example values taken from 
		http://oauth.googlecode.com/svn/code/javascript/example/signature.html
	"

	| request |
	request := WebRequest new.
	request method: 'GET'.
	WebUtils oAuthSign: request 
				url: 'http://host.net/resource?name=value&name=value'
				using: self oAuthParams.
	self assert: (request headerAt: 'Authorization')
		equals: 'OAuth oauth_consumer_key="abcd",oauth_nonce="FWNkVaRJVzE",oauth_signature_method="HMAC-SHA1",oauth_timestamp="1281668113",oauth_token="ijkl",oauth_version="1.0",oauth_signature="30p67coAX8YbxCKAGfaimydYK6g%3D"'.
