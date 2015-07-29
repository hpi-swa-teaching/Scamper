changing page
getContentFromWeb: aUrl
	"get the content from the WebClient and get the cookies to save"
	|client content resp contentType|
	client := webClient.
	resp:= client httpGet: (aUrl asString) do: [:req|
		req := self addMatchingCookiesTo: req client: client path: req url].
	
	self storeCookies: client cookies.	
	content:= resp content.

	contentType := MIMEDocument guessTypeFromName: aUrl.
	
	contentType = 'application/octet-stream' ifTrue: [contentType := 'text/html'].
	content:= MIMEDocument contentType: contentType content: content content  url: aUrl.
	
	^content

			
