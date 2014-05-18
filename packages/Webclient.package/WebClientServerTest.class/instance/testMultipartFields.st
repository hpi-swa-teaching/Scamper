tests - fields
testMultipartFields
	"Test client and server handling multipart/form-data fields"

	| resp |
	server addService: '/fields' action:[:req | 
		req send200Response: (String streamContents:[:s|
			req fields keys asArray sort do:[:key | s cr; nextPutAll: key,'=', (req fields at: key)].
		]).
	].

	resp := WebClient httpPost: self localHostUrl,'/fields'  multipartFields: {
		'foo' -> 123.
		'bar' -> 'yoho'.
	}.
	self assert: resp code = 200.
	self assert: resp content = '
bar=yoho
foo=123'.
