changing page
submitFormWithInputsAsync: inputs url: url method: method encoding: encoding
	"Submit the given form with the provided inputs, url, method, and encoding"

	| newUrl |
	self stopEverything.
	(method asLowercase ~= 'get' and: [ method asLowercase ~= 'post' ])
		ifTrue:
			[ self inform: ('unknown FORM method: {1}' translated format: {method}).
			^ false ].
	newUrl := url asUrlRelativeTo: currentUrl.
	newUrl schemeName ~= 'http'
		ifTrue:
			[ self inform: 'I can only submit forms via HTTP' translated.
			^ false ].
	self status: 'submitting form...' translated.
	self addNextToRecentDocuments.
	
	^ self downloadFromUrlAsync: newUrl withMethod: method andInputs: inputs andEncoding: encoding