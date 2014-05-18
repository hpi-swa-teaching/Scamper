tests - oauth
oAuthParams
	"The base parameter set for oauth related tests.
	Example values taken from 
		http://oauth.googlecode.com/svn/code/javascript/example/signature.html
	"

	^Dictionary newFromPairs: {
		"Consumer key and secret"
		'oauth_consumer_key'. 		'abcd'.
		'oauth_consumer_secret'.	'efgh'.

		"Token key and secret"
		'oauth_token'.	'ijkl'.
		'oauth_token_secret'. 'mnop'.
		
		'oauth_timestamp'. '1281668113'.
		'oauth_nonce'.	'FWNkVaRJVzE'.
		
		"Twitter uses oauth 1.0 with HMAC-SHA1"
		'oauth_version'.				'1.0'.
		'oauth_signature_method'.	'HMAC-SHA1'.
	}.