tests - fields
testPostFields
	"Test client and server handling fields in url-encoded encoded post requests"

	| resp |
	server addService: '/fields' action:[:req | 
		req send200Response: (String streamContents:[:s|
			req fields keys asArray sort do:[:key | s cr; nextPutAll: key,'=', (req fields at: key)].
		]).
	].

	resp := WebClient httpPost: self localHostUrl, '/fields' 
				content: 'foo=123&bar=yoho'
				type: 'application/x-www-form-urlencoded'.
	self assert: resp code = 200.
	self assert: resp content = '
bar=yoho
foo=123'.
