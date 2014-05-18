pages
webClientRequests
	"This method was automatically generated. Edit it using:"
	"WebClientHelp edit: #webClientRequests"
	^HelpTopic
		title: 'Using WebClient'
		contents: 
'The simplest form to use WebClient is by one of its convenience APIs:

	WebClient httpGet: ''http://www.squeak.org/''.
	WebClient httpPost: ''http://www.squeak.org/'' content:''Hello Squeak'' type: ''text/plain''.

For more elaborate use of headers and some other options in the request, a client can utilize modified variants:

	WebClient new httpGet: ''http://www.squeak.org/'' do:[:req|
		"Set an if-modified-since header"
		req headerAt: ''If-Modified-Since'' put: ''Sat, 29 Oct 1994 19:43:31 GMT''.
		"Add several accept headers"
		req addHeader: ''Accept'' value: ''text/plain''.
		req addHeader: ''Accept'' value: ''application/x-foo-bar''.
		req addHeader: ''Accept'' value: ''image/jpg''.
	].

The set of utility methods is limited to a few useful ones but it is easy to do the setup on your own:

	| url client request data |
	data := ''Hello Squeak''.								"POST data"
	url := ''http://www.squeak.org/''.						"POST url"
	client := WebClient new initializeFromUrl: url. 		"sets host etc"
	request := client requestWithUrl: url. 				"sets path etc"
	request method: ''POST''.							"sets method"
	request headerAt: ''Content-Length'' put: data size.
	request headerAt: ''Content-Type'' put: ''text/plain''.
	"... any other headers required ..."
	^client sendRequest: request 
		content: data readStream
		size: data size.

The utility methods like httpGet: etc. are similarly simple requests.
!
]style[(71 11 8 1 24 13 9 1 24 1 8 14 1 5 1 12 2 115 11 3 1 8 1 24 1 3 2 3 1 3 33 3 3 1 9 1 19 1 4 1 31 4 28 3 3 1 10 1 8 1 6 1 12 4 3 1 10 1 8 1 6 1 23 4 3 1 10 1 8 1 6 1 11 6 105 1 1 1 3 1 6 1 7 1 4 1 1 2 4 1 2 1 14 9 11 2 3 1 2 1 24 7 10 2 6 1 2 11 3 1 18 1 3 4 15 2 7 1 2 1 6 1 15 1 3 6 15 2 7 1 7 1 6 8 13 2 7 1 9 1 16 1 4 1 4 1 4 3 7 1 9 1 14 1 4 1 12 3 36 2 1 6 1 12 1 7 4 8 1 4 1 10 3 5 1 4 1 4 2 71),cblack;,c000000127,cblack;,c127000127,cblack;,c000000127,cblack;,c127000127,cblack;,c000000127,c127000127,cblack;,c000000127,cblack;,c127000127,cblack;,,cblack;,c000000127,cblack;,c000000127,cblack;,c127000127,cblack;,c000000127,cblack;,c000000127,cgray;,cblack;,c000127127,cblack;,c000000127,cblack;,c000000127,cblack;,c127000127,cblack;,c000000127,cblack;,c127000127,cblack;,c000127127,cblack;,c000000127,cblack;,c000000127,cblack;,c127000127,cblack;,c000000127,cblack;,c127000127,cblack;,c000000127,cblack;,c000000127,cblack;,c127000127,cblack;,c000000127,cblack;,c127000127,cblack;,c000000127,cblack;,c000000127,cblack;,c127000127,cblack;,c000000127,cblack;,c127000127,cblack;,,cblack;,cgray;,cblack;,c107107107,cblack;,c107107107,cblack;,c107107107,cblack;,c107107107,cblack;,cgray;,cblack;,c107107107,cblack;,b,cblack;,c127000127,cblack;,c000127127,cblack;,c107107107,cblack;,b,cblack;,c127000127,cblack;,c000127127,cblack;,c107107107,cblack;,b,cblack;,c000000127,cblack;,c000000127,cblack;,c107107107,cblack;,c000127127,cblack;,c107107107,cblack;,b,cblack;,c107107107,cblack;,c000000127,cblack;,c107107107,cblack;,c000127127,cblack;,c107107107,cblack;,c000000127,cblack;,c127000127,cblack;,c000127127,cblack;,c107107107,cblack;,c000000127,cblack;,c127000127,cblack;,c000000127,cblack;,c107107107,cblack;,c000000127,cblack;,c107107107,cblack;,c000000127,cblack;,c127000127,cblack;,c000000127,cblack;,c127000127,cblack;,c000127127,cblack;,c127000000,c107107107,cblack;,c000000127,cblack;,c107107107,cblack;,c000000127,cblack;,c107107107,cblack;,c000000127,cblack;,c000000127,cblack;,c107107107,cblack;,c000000127,cblack;,!' readStream nextChunkText