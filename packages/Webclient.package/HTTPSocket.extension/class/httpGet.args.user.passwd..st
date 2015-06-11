*WebClient-HTTP-override
httpGet: url args: args user: user passwd: passwd
	"Upload the contents of the stream to a file on the server.

	WARNING: This method will send a basic auth header proactively.
	This is necessary to avoid breaking MC and SqueakSource since SS does not 
	return a 401 when accessing a private (global no access) repository."

	| urlString xhdrs client resp progress |

	"Normalize the url"
	urlString := (Url absoluteFromText: url) asString.

	"Some raw extra headers which historically have been added"
	xhdrs := HTTPProxyCredentials,
		HTTPBlabEmail.	"may be empty"

	client := WebClient new.
	client username: user; password: passwd.
	^[resp := client httpGet: urlString do:[:req|
	
		"HACK: Proactively send a basic auth header.
		See comment above."
		req headerAt: 'Authorization' put: 'Basic ', (user, ':', passwd) base64Encoded.

		"Accept anything"
		req addHeader: 'Accept' value: '*/*'.
		"Add the additional headers"
		(WebUtils readHeadersFrom: xhdrs readStream) 
			do:[:assoc| req addHeader: assoc key value: assoc value]].

	progress := [:total :amount| 
		(HTTPProgress new) total: total; amount: amount; signal: 'Downloading...'
	].

	"Simulate old HTTPSocket return behavior"
	(resp code between: 200 and: 299) 
		ifTrue:[^(RWBinaryOrTextStream with: (resp contentWithProgress: progress)) reset]
		ifFalse:[resp asString, resp content].
	] ensure:[client destroy].
