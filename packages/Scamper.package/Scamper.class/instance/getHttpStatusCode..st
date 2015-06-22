changing page
getHttpStatusCode: aUrl
	"get Http Statuscode from an given Url"
	|client statusResponse resp code|
	client := WebClient new.
	client userAgent: Scamper userAgent.
	resp:= client httpGet: (aUrl asString) do: [:req].
	code:= resp code.
	statusResponse:= self handleHttpStatusCode: code withURL: aUrl.
^statusResponse