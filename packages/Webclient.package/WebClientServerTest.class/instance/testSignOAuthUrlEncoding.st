tests - oauth
testSignOAuthUrlEncoding
	"Ensure that we can sign a request requiring url-encoded oauth params.
	Example values taken from 
		http://oauth.googlecode.com/svn/code/javascript/example/signature.html
	"

	| params request |
	"Consumer Key with url-encoded characters"
	params := self oAuthParams.
	params at: 'oauth_consumer_key' put: 'key with spaces'.

	request := WebRequest new.
	request method: 'GET'.
	WebUtils oAuthSign: request 
				url: 'http://host.net/resource'
				using: params.
	self assert: (request headerAt: 'Authorization')
		equals: 'OAuth oauth_consumer_key="key%20with%20spaces",oauth_nonce="FWNkVaRJVzE",oauth_signature_method="HMAC-SHA1",oauth_timestamp="1281668113",oauth_token="ijkl",oauth_version="1.0",oauth_signature="%2FxrAsx0Utt3V6ZbX00jWWpkqrvg%3D"'.