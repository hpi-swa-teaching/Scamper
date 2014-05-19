pages
authentication
	"This method was automatically generated. Edit it using:"
	"WebServerHelp edit: #authentication"
	^HelpTopic
		title: 'Authentication'
		contents: 
'To add authentication you can use web server as follows:

	WebServer default addService: ''/smalltalk'' action:[:req| | action |
		WebServer default authenticate: req realm: ''squeak'' methods: #(digest basic) do:[
			action := (req fields at: ''get'' ifAbsent:['''']) asSymbol.
			req send200Response: (Smalltalk perform: action) asString.
		].
	].

The above supports both digest as well as basic authentication for accessing the /smalltalk service. Let''s add a user so that we can access it:

	WebServer default passwordAt: ''squeak'' realm: ''squeak'' put: ''squeak''.

The server does NOT store plain text passwords, but rather hashes. To be precise, it stores the ha1 term used in digest authentication which is the same hash produced by htdigest. We can now access the /smalltalk service by providing user name ''squeak'' and password ''squeak''.

	(WebClient httpGet:''http://localhost:8080/smalltalk?get=platformName'') content.

Unfortunately, digest authentication can be slow since our MD5 implementation is rather pathetic. 
!
]style[(58 11 7 1 11 1 12 1 7 2 3 1 1 1 1 6 1 1 13 7 1 13 1 3 1 6 1 8 1 8 3 6 1 5 2 3 1 4 6 1 2 1 1 3 1 6 1 3 1 5 1 9 1 2 1 1 1 8 5 3 1 16 1 1 10 8 1 6 1 1 8 4 1 6 146 11 7 1 11 1 8 1 6 1 8 1 4 1 8 2 278 12 8 50 2 7 2 100),cblack;,c000000127,cblack;,c000000127,cblack;,c127000127,cblack;,c000000127,cblack;,c000000127,cgray;,cblack;,cgray;,cblack;,cgray;,cblack;,cgray;,cblack;,c000000127,cblack;,c000000127,cblack;,c000000127,cblack;,c000000127,cblack;,c127000127,cblack;,c000000127,cblack;,c000000127,cblack;,c000000127,cblack;,c000000127,c000127000,cblack;,cgray;,cblack;,b,cblack;,c127000127,c000000127,cblack;,c000000127,cblack;,c000000127,cblack;,c127000127,cblack;,c000000127,c127000000,c127000127,c127000000,c127000127,cblack;,c000000127,cblack;,c000000127,cblack;,c000000127,cblack;,c127000127,cblack;,c000000127,cblack;,cgray;,c127000127,cblack;,c000000127,cblack;,c000127000,cblack;,,cblack;,c000000127,cblack;,c000000127,cblack;,c127000127,cblack;,c000000127,cblack;,c127000127,cblack;,c000000127,cblack;,c127000127,cblack;,,cblack;,c000000127,c127000127,cblack;,c000000127,cblack;,!' readStream nextChunkText