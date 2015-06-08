*WebClient-HTTP-override
httpPost: url args: args user: user passwd: passwd

	"WARNING: This method will send a basic auth header proactively.
	This is necessary to avoid breaking MC and SqueakSource since SS does not 
	return a 401 when accessing a private (global no access) repository."

	| argString xhdrs client resp urlString |
	"Normalize the url"
	urlString := (Url absoluteFromText: url) asString.

	args ifNotNil: [
		argString := self argString: args.
		argString first = $? ifTrue: [argString := argString allButFirst].
	].

	"Some raw extra headers which historically have been added"
	xhdrs := HTTPProxyCredentials,
		HTTPBlabEmail.	"may be empty"

	client := WebClient new.
	client username: (user ifEmpty:[nil]); password: (passwd ifEmpty:[nil]).
	^[resp := client httpPost: urlString content: (argString ifNil:[''])
				type: 'application/x-www-form-urlencoded'  do:[:req|
		"HACK: Proactively send a basic auth header.
		See comment above."
		req headerAt: 'Authorization' put: 'Basic ', (user, ':', passwd) base64Encoded.
		"Accept anything"
		req addHeader: 'Accept' value: '*/*'.
		"Add the additional headers"
		(WebUtils readHeadersFrom: xhdrs readStream) 
			do:[:assoc| req addHeader: assoc key value: assoc value]].

	"Simulate old HTTPSocket return behavior"
	(resp code between: 200 and: 299) 
		ifTrue:[MIMEDocument 
					contentType: resp contentType content: resp content url: url]
		ifFalse:[resp asString, resp content].
	] ensure:[client destroy].
