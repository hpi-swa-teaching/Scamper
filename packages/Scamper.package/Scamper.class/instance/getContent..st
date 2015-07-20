changing page
getContent: aUrl
	"get the content from the WebClient and get the cookies to save"
	|client content resp type|
	client := WebClient new.
	client userAgent: Scamper userAgent.
	resp:= client httpGet: (aUrl asString) do: [:req|
		req := self addMatchingCookiesTo: req client: client path: req url].
	self storeCookies: client cookies.	
	content:= resp content.
	(aUrl asString endsWith: '/') ifTrue: [type:= 'text/html'].
	(aUrl asString endsWith: '/') ifFalse:[type:= (MIMEDocument guessTypeFromName: aUrl).].
	content:= MIMEDocument contentType: type content: content content url: aUrl.
^content

			
