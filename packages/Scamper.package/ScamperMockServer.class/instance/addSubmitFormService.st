as yet unclassified
addSubmitFormService

	self addService: '/submitForm' action: [ :req | 
		req send200Response: (ScamperMockServer submitFormHtml) 
		contentType: 'text/html' ].
	
	self addService: '/response' action: [ :req |
		| data |
		data := req fields.
		req send200Response: ('<p>', (data at: 'Text3'), ' ', (data at: 'Text1'), ' ', (data at: 'Text2'), '</p>') contentType: 'text/html'.
		]