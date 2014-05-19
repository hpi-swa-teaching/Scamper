pages
startingWebServer
	"This method was automatically generated. Edit it using:"
	"WebServerHelp edit: #startingWebServer"
	^HelpTopic
		title: 'Starting WebServer'
		contents: 
'A WebServer is started by listening on a particular port. The examples below use ''WebServer reset default'' for convenience; specific applications should have their own registry for accessing various WebServer instances.

	(WebServer reset default)
		listenOn: 8080.

The server will persist when the image is restarted and must be stopped explicitly by sending it the #destroy message.
!
]style[(221 12 5 1 7 4 9 1 4 2 120),cblack;,c000000127,cblack;,c000000127,cblack;,c000000127,cblack;,c127000000,cblack;,!' readStream nextChunkText