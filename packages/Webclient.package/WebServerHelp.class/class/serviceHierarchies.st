pages
serviceHierarchies
	"This method was automatically generated. Edit it using:"
	"WebServerHelp edit: #serviceHierarchies"
	^HelpTopic
		title: 'Service Hierarchies'
		contents: 
'More specific services are preferred over more general services.  In addition to the /hello service, we can provide a handler for /hello/squeak by adding the following service:

	WebServer default addService: ''/hello/squeak'' action:[:req|
		req send200Response: ''Hello to you too, Squeak!!''.
	].

	(WebClient httpGet:''http://localhost:8080/hello'') content.
	(WebClient httpGet:''http://localhost:8080/hello/squeak'') content.

A default handler for any kind of request can installed by using the ''/'' path:

	WebServer default addService: ''/'' action:[:req|
		req send302Response: ''/hello''. "temporary redirect"
	].

This will make any request that isn''t handled by an explicit action redirect to /hello where it will be handled by the handler established earlier, for example:

	(WebClient httpGet:''http://localhost:8080/foobar'') content.
!
]style[(178 11 7 1 11 1 15 1 7 2 3 1 3 3 1 16 1 27 6 1 12 8 29 2 7 14 8 36 2 7 2 81 11 7 1 11 1 3 1 7 2 3 1 3 3 1 16 1 8 2 20 5 163 12 8 30 2 7 1 1),cblack;,c000000127,cblack;,c000000127,cblack;,c127000127,cblack;,c000000127,cblack;,c000000127,cgray;,cblack;,c000000127,cblack;,c000000127,cblack;,c127000127,cblack;,,cblack;,c000000127,c127000127,cblack;,c000000127,cblack;,c000000127,c127000127,cblack;,c000000127,cblack;,,cblack;,c000000127,cblack;,c000000127,cblack;,c127000127,cblack;,c000000127,cblack;,c000000127,cgray;,cblack;,c000000127,cblack;,c000000127,cblack;,c127000127,cblack;,c000127127,cblack;,,cblack;,c000000127,c127000127,cblack;,c000000127,cblack;,!' readStream nextChunkText