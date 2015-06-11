*WebClient-HTTP-override
httpGetDocument: url args: args accept: mimeType request: requestString
	"Return the exact contents of a web object. Asks for the given MIME type. If mimeType is nil, use 'text/html'. An extra requestString may be submitted and must end with crlf.  The parsed header is saved. Use a proxy server if one has been registered.  tk 7/23/97 17:12"

	"Note: To fetch raw data, you can use the MIME type 'application/octet-stream'."

	| client xhdrs resp urlString progress |
	"Normalize the url"
	urlString := (Url absoluteFromText: url) asString.

	args ifNotNil: [
		urlString := urlString, (self argString: args) 
	].

	"Some raw extra headers which historically have been added"
	xhdrs := HTTPProxyCredentials,
		HTTPBlabEmail,	"may be empty"
		requestString.	"extra user request. Authorization"

	client := WebClient new.
	^[resp := client httpGet: urlString do:[:req|
		"Add ACCEPT header"
		mimeType ifNotNil:[req headerAt: 'Accept' put: mimeType].

		"Always accept plain text"
		req addHeader: 'Accept' value: 'text/html'.

		"Add the additional headers"
		(WebUtils readHeadersFrom: xhdrs readStream) 
			do:[:assoc| req addHeader: assoc key value: assoc value]].

	progress := [:total :amount| 
		(HTTPProgress new) total: total; amount: amount; signal: 'Downloading...'
	].

	"Simulate old HTTPSocket return behavior"
	(resp code between: 200 and: 299) 
		ifTrue:[MIMEDocument contentType: resp contentType 
				content: (resp contentWithProgress: progress) url: url]
		ifFalse:[resp asString, resp content].
	] ensure:[client destroy].
