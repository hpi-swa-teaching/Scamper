*WebClient-HTTP-override
httpPut: contents to: url user: user passwd: passwd
	"Upload the contents of the stream to a file on the server
	
	WARNING: This method will send a basic auth header proactively.
	This is necessary to avoid breaking MC and SqueakSource since SS does not 
	return a 401 when accessing a private (global no access) repository."

	| urlString xhdrs client resp |

	"Normalize the url"
	urlString := (Url absoluteFromText: url) asString.

	"Some raw extra headers which historically have been added"
	xhdrs := HTTPProxyCredentials,
		HTTPBlabEmail.	"may be empty"

	client := WebClient new.
	client username: (user ifEmpty:[nil]); password: (passwd ifEmpty:[nil]).
	^[resp := client httpPut: urlString content: contents type: nil  do:[:req|
		"HACK: Proactively send a basic auth header.
		See comment above."
		req headerAt: 'Authorization' put: 'Basic ', (user, ':', passwd) base64Encoded.
		"Accept anything"
		req addHeader: 'Accept' value: '*/*'.
		"Add the additional headers"
		(WebUtils readHeadersFrom: xhdrs readStream) 
			do:[:assoc| req addHeader: assoc key value: assoc value]].

	"Simulate old HTTPSocket return behavior"
	resp asString, resp content
	] ensure:[client destroy].
