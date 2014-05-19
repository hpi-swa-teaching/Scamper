tests - oauth
testSignOAuthPostFields
	"Ensure that we can sign a POST request with fields correctly using OAuth.
	Example values taken from 
		http://oauth.googlecode.com/svn/code/javascript/example/signature.html
	"

	| request |
	request := WebRequest new.
	request method: 'POST'.
	WebUtils oAuthSign: request 
				url: 'http://host.net/resource'
				extra:{'name' -> 'value'}
				using: self oAuthParams.
	self assert: (request headerAt: 'Authorization')
		equals: 'OAuth oauth_consumer_key="abcd",oauth_nonce="FWNkVaRJVzE",oauth_signature_method="HMAC-SHA1",oauth_timestamp="1281668113",oauth_token="ijkl",oauth_version="1.0",oauth_signature="E7yVjmf%2F8UTF9ij15CtbBBhulMw%3D"'.
