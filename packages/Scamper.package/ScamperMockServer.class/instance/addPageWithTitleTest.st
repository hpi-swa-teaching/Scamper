mocking
addPageWithTitleTest

	self addService: '/testpage' action: [ :req | 
		req send200Response: (ScamperMockServer pageWithTitleTestHtml) 
		contentType: 'text/html' ].
	
	