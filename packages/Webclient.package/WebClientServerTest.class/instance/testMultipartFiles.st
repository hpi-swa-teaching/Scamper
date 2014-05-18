tests - fields
testMultipartFiles
	"Test client and server handling multipart/form-data fields for file uploads"

	| resp request document firstPart |
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

	resp := WebClient httpPost: self localHostUrl,'/fields'  multipartFields: {
		'upload' -> document.
	}.
	"First test just verifies that uploaded documents look just like other fields"
	self assert: resp code = 200.
	self assert: resp content = '
upload=Hello World, this is a sample file'.

	"Second test verifies that we have the additional data from a file upload"
	firstPart := true.
	request multipartFieldsDo:[:headers :params :content|
		self assert: firstPart. "should only have one part"
		self assert: (params at: 'name') = 'upload'.
		self assert: (params at: 'filename') = 
						(FileDirectory default fullNameFor: 'test.txt').
		self assert: (headers at: 'content-type') = 'text/webclient-test'.
		firstPart := false.
	].
