tests - fields
testMultipartFiles2
	"Same as testMultpartFiles but this time using HTTPSocket API"

	| resp request document firstPart fields |
	server addService: '/fields' action:[:req | 
		request := req.
		req send200Response: (String streamContents:[:s|
			req fields keys asArray sort do:[:key | s cr; nextPutAll: key,'=', (req fields at: key)].
		]).
	].

	document := MIMEDocument 
				contentType: 'text/webclient-test'
				content: 'Hello World, this is a sample file'
				url: FileDirectory default url,'test.txt'.

	fields := Dictionary new.
	fields at: 'upload' put: {document}.

	"Make sure we're *actually* using HTTPSocket and not WebClient
	(if it's registered as HTTP handler in HTTPSocket)"
	(HTTPSocket respondsTo: #httpRequestHandler:) ifTrue:[
		| oldHandler |
		oldHandler := HTTPSocket httpRequestHandler.
		[HTTPSocket httpRequestHandler: nil.
		resp := (self localHostUrl,'/fields') asUrl postMultipartFormArgs: fields.
		] ensure:[HTTPSocket httpRequestHandler: oldHandler].
	] ifFalse:[
		resp := (self localHostUrl,'/fields') asUrl postMultipartFormArgs: fields.
	].

	"First test just verifies that uploaded documents look just like other fields"
	self assert: resp content = '
upload=Hello World, this is a sample file'.

	"Verifies that we have the additional data from a file upload"
	firstPart := true.
	request multipartFieldsDo:[:headers :params :content|
		self assert: firstPart. "should only have one part"
		self assert: (params at: 'name') = 'upload'.
		self assert: (params at: 'filename') = 
						(FileDirectory default fullNameFor: 'test.txt').
		self assert: (headers at: 'content-type') = 'text/webclient-test'.
		firstPart := false.
	].
