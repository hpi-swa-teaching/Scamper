pages
errorHandling
	"This method was automatically generated. Edit it using:"
	"WebServerHelp edit: #errorHandling"
	^HelpTopic
		title: 'Error Handling'
		contents: 
'By default WebServer will send a 500 response with a full debug stack when an error occurs. This may not be appropriate in production environments and consequently, the error handler can be customized. Typically, the error handler will perform one of the following actions:

* Pass the error through. This is useful for debugging, when an error in WebServer should raise a notifier:

	webServer errorHandler:[:err :socket| err pass].

* Send the ''standard'' 500 response (including the full stack): You can simply use WebServer''s default action for this:

	webServer errorHandler:[:err :socket| webServer handleError: err socket: socket.].

* Send a custom 500 response, or perform a redirect, for example:

	webServer errorHandler:[:err :socket|
		[socket sendData:
			''HTTP/1.0 302 Temporary redirect'', String crlf,
			''Location: /error.html'', String crlf,
			String crlf.
		socket close] on: Error do:[
			"Ignore errors in error handling"
		].
	].

Of course, you can use any possible combination; including the ability to turn error handling on and off via WebServer http requests.!
]style[(384 11 13 2 3 2 6 1 1 3 1 4 2 123 10 13 2 3 2 6 1 11 12 1 3 1 7 1 6 3 69 11 13 2 3 2 6 1 3 1 6 1 9 4 33 1 8 5 4 23 1 8 5 11 4 4 6 1 5 1 1 3 7 3 1 4 33 3 1 5 135),cblack;,c000000126,cblack;,c000000126,cblack;,c000000126,cgray;,cblack;,c000000126,cblack;,c000000126,cblack;,,cblack;,c000000126,cblack;,c000000126,cblack;,c000000126,cgray;,cblack;,c000000126,cblack;,c000000126,cblack;,c000000126,cblack;,c000000126,cblack;,,cblack;,c000000126,cblack;,c000000126,cblack;,c000000126,cgray;,cblack;,c000126000,c000000126,cblack;,c000000126,cblack;,c126000126,c000000126,cblack;,c000000126,cblack;,c126000126,c000000126,cblack;,c000000126,cblack;,c000000126,cblack;,c000000126,cblack;,c000000126,c000126000,cblack;,c000000126,cblack;,c000000126,c000126000,cblack;,c000126126,cblack;,c000126000,cblack;,!' readStream nextChunkText