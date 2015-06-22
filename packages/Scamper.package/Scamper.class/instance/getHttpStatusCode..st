changing page
getHttpStatusCode: aUrl
	"get HTTP status code from a given URL"
	|client statusResponse resp code|
	client := WebClient new.
	client userAgent: Scamper userAgent.
	resp:= client httpGet: (aUrl asString) do: [:req|
		req := self addMatchingCookiesTo: req client: client path: req url].
	self storeCookies: client cookies.	
	code:= resp code.
	statusResponse:= self handleHttpStatusCode: code withURL: aUrl.
^statusResponse