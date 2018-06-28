as yet unclassified
addPaddingService

	self addService: '/padding' action: [ :req | 
		req send200Response: (ScamperMockServer paddingHtml) 
		contentType: 'text/html' ].