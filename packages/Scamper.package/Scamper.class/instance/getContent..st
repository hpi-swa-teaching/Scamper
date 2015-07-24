changing page
getContent: aUrl
	"get the content from the WebClient and get the cookies to save"
	|client content resp|
	client := WebClient new.
	client userAgent: Scamper userAgent.
	resp:= client httpGet: (aUrl asString) do: [:req|
		req := self addMatchingCookiesTo: req client: client path: req url].
	self storeCookies: client cookies.	
	content:= resp content.
	content:= MIMEDocument contentType: 'text/html'  content: content content  url: aUrl.
^content

			
