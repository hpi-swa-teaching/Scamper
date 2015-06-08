*WebClient-HTTP-override
httpPost: url content: postData type: contentType accept: mimeType request: requestString
	"like httpGET, except it does a POST instead of a GET.  POST allows data to be uploaded"

	| urlString xhdrs client resp |
	"Normalize the url"
	urlString := (Url absoluteFromText: url) asString.

	"Some raw extra headers which historically have been added"
	xhdrs := HTTPProxyCredentials,
		HTTPBlabEmail,	"may be empty"
		requestString.	"extra user request. Authorization"
	client := WebClient new.
	^[resp := client httpPost: urlString content: (postData ifNil:[''])
				type: contentType do:[:req|
		"Add ACCEPT header"
		mimeType ifNotNil:[req headerAt: 'Accept' put: mimeType].

		"Always accept plain text"
		req addHeader: 'Accept' value: 'text/html'.

		"Add the additional headers"
		(WebUtils readHeadersFrom: xhdrs readStream) 
			do:[:assoc| req addHeader: assoc key value: assoc value]].

	"Simulate old HTTPSocket return behavior"
	(resp code between: 200 and: 299) 
		ifTrue:[MIMEDocument 
					contentType: resp contentType content: resp content url: url]
		ifFalse:[resp asString, resp content].
	] ensure:[client destroy].
