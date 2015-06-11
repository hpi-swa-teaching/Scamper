changing page
getHttpStatusCode: aUrl
	"get Http Statuscode from an given Url"
	|statusResponse resp code|
	resp:= WebClient httpGet: (aUrl asString).
	code:= resp code.
	statusResponse:= self handleHttpStatusCode: code withURL: aUrl.
^statusResponse