pages
addingServices
	"This method was automatically generated. Edit it using:"
	"WebServerHelp edit: #addingServices"
	^HelpTopic
		title: 'Adding Services'
		contents: 
'Once the server is running, you can point your browser to http://localhost:8080 but since we haven''t told WebServer what we''d like to do all we get is a 404 (not found) response. To tell WebServer what to do we need to register a service:

	WebServer default addService: ''/hello'' action:[:req|
		req send200Response: ''Hello World''.
	].

The service takes a path (/hello) and an action to perform for any request that maps to this path. We can now fetch the response in a browser by going to http://localhost:8080/hello or directly using WebClient:

	(WebClient httpGet:''http://localhost:8080/hello'') content.
	(WebClient httpGet:''http://localhost:8080/hello/squeak'') content.
!
]style[(240 11 7 1 11 1 8 1 7 2 3 1 3 3 1 16 1 13 6 213 12 8 29 2 7 14 8 36 2 7 2),cblack;,c000000127,cblack;,c000000127,cblack;,c127000127,cblack;,c000000127,cblack;,c000000127,cgray;,cblack;,c000000127,cblack;,c000000127,cblack;,c127000127,cblack;,,cblack;,c000000127,c127000127,cblack;,c000000127,cblack;,c000000127,c127000127,cblack;,c000000127,cblack;!' readStream nextChunkText