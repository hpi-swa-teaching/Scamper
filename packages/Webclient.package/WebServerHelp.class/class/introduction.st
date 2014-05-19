pages
introduction
	"This method was automatically generated. Edit it using:"
	"WebServerHelp edit: #introduction"
	^HelpTopic
		title: 'Introduction'
		contents: 
'WebServer is a simple, yet reasonably complete HTTP server implementation. WebServer supports streaming, authentication, cookies, and session handling in a compact and easy to use form.

The primary goal for WebServer is for command-and-control style interfaces. If you would like to add some web-based remote control facility without much fuzz and html goodness around it, WebServer is for you.

WebServer comes together with WebClient which provides a similarly complete and simple HTTP client implementation.!' readStream nextChunkText