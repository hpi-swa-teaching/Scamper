pages
summary
	"This method was automatically generated. Edit it using:"
	"WebServerHelp edit: #summary"
	^HelpTopic
		title: 'Summary'
		contents: 
'At this point, making a request like the following:

	(WebClient httpGet: ''http://localhost:8080/smalltalk?get=platformName'') content.

requires several roundtrips:

	1) The first GET request is redirected from /smalltalk to /login
	2) The request to /login is responded to with an authentication challenge
	3) The request to /login is authenticated and a session cookie is established
	4) The request is redirected back to /smalltalk where it is finally handled.

More examples for using WebServer can be found in class WebServer itself. Here is an overview:

	* exampleDoIt - the simplest possible RPC interface to Squeak.
	* exampleBrowse - browse the files on your local disk
	* exampleSession - a simple session example
	* exampleAuth - a simple authentication example
!
]style[(53 12 8 1 50 2 7 2 639),cblack;,c000000127,cblack;,c127000127,cblack;,c000000127,cblack;,!' readStream nextChunkText