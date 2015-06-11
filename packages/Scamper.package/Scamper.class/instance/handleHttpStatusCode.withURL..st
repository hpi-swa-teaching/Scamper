changing page
handleHttpStatusCode: code withURL: aUrl
	"get and proceed the http status code"
	
	|statusResponse codeDict|
	codeDict:= Dictionary new.

	codeDict 
		at: 400 
		put: '<html><head><title>400 Bad Request</title></head><body>', '<h1>Bad Request</h1><p>The server encountered a request it did not understand.</body></html>'.
	
	codeDict 
		at: 404 
		put: '<html><head><title>404 Not Found</title></head><body><h1>404 Not Found</h1><p>The requested URL "', aUrl,'" was not found on this server.</p></body></html>'.

	codeDict 
		at: 500 
		put: '<html><head><title>500 Internal Server Error</title></head><body>', '<h1>Internal Server Error</h1></body></html>'.
	
	statusResponse:= codeDict at: code ifAbsent: [].
	code < 400 ifTrue: [statusResponse:='OK'].

	statusResponse ifNil: [statusResponse:='<html><head><title>Error code:', code,' </title></head><body>', '<h1>Error code:', code,'</h1><p>received from "',aUrl,'" </p><p>If you want to know more about this error, please take a look at the following link: <a href="http://en.wikipedia.org/wiki/List_of_HTTP_status_codes">http://en.wikipedia.org/wiki/List_of_HTTP_status_codes</a></p></body></html>'].

^statusResponse