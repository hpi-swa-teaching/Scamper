tests - misc
testHtmlSubmitUsing: fields
	"Ensure that we have round-trip conversion for html submit"

	| resp |
	server addService: '/fields' action:[:req | 
		req send200Response: (String streamContents:[:s|
			req fields keys asArray sort do:[:key | s cr; nextPutAll: key,'=', (req fields at: key)].
		]).
	].
	resp := WebClient htmlSubmit: (self localHostUrl, '/fields') fields: fields.
	self assert: resp code = 200.
	self assert: resp content = '
bar=yoho
foo=123'.

	resp := WebClient htmlSubmit: (self localHostUrl, '/fields') fields: fields method: 'POST'.
	self assert: resp code = 200.
	self assert: resp content = '
bar=yoho
foo=123'.
