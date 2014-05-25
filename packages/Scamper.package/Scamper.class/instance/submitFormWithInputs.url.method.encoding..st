changing page
submitFormWithInputs: inputs url: url method: method encoding: encoding
	"Submit the given form with the provided inputs, url, method, and encoding"

	| newUrl newSource |
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
	downloadingProcess := [ newSource := method asLowercase = 'get'
		ifTrue: [ newUrl retrieveContentsArgs: inputs ]
		ifFalse:
			[ encoding = MIMEDocument contentTypeMultipart
				ifTrue: [ newUrl postMultipartFormArgs: inputs ]
				ifFalse: [ newUrl postFormArgs: inputs ] ].
	documentQueue nextPut: newSource.
	downloadingProcess := nil ] newProcess.
	downloadingProcess resume.
	self addNextToRecentDocuments.
	^ true