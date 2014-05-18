pages
webClientResponses
	"This method was automatically generated. Edit it using:"
	"WebClientHelp edit: #webClientResponses"
	^HelpTopic
		title: 'Responses'
		contents: 
'The WebClient request methods return a WebResponse that the client can process:

	| resp |
	resp := WebClient httpGet: ''http://www.squeak.org/''.
	resp isSuccess ifFalse:[^self error: resp status].
	"Process the content from the response"
	^resp content

In addition, content can be streamed from the response so that it does not need to be downloaded all at once:

	| client resp file |
	client := WebClient new.
	[resp := client httpGet: ''http://www.squeak.org/''.
	resp isSuccess ifFalse:[^self error: resp status].
	"Stream the content from the response"
	file := FileStream newFileNamed: ''page.html''.
	resp streamTo: file 
			size: resp contentLength
			progress:[:total :amount].
	file close] ensure:[client close].

The progress block in the above can be omitted but has been included in this example to illustrate its usage. The block takes a total length (which can be nil if the length is not known) and the amount that has been loaded.
!
]style[(81 1 1 1 4 1 1 2 4 1 2 11 8 1 24 3 4 1 9 1 8 1 5 1 6 1 4 1 6 4 39 2 1 4 1 7 1 112 1 1 1 6 1 4 1 4 1 1 2 6 1 2 11 3 4 4 1 2 1 6 1 8 1 24 3 4 1 9 1 8 1 5 1 6 1 4 1 6 1 3 38 2 4 1 2 12 13 1 11 3 4 1 9 1 4 5 5 1 4 1 13 4 9 1 1 5 2 6 1 3 4 1 5 2 7 1 6 1 5 3 225),cblack;,cgray;,cblack;,c107107107,cblack;,cgray;,cblack;,c107107107,cblack;,b,cblack;,c000000127,cblack;,c127000127,cblack;,c107107107,cblack;,c000000127,cblack;,c000000127,cblack;,c127000000,cblack;,c000000127,cblack;,c107107107,cblack;,c000000127,cblack;,c000127127,cblack;,c127000000,c107107107,cblack;,c000000127,cblack;,,cblack;,cgray;,cblack;,c107107107,cblack;,c107107107,cblack;,c107107107,cblack;,cgray;,cblack;,c107107107,cblack;,b,cblack;,c000000127,cblack;,c107107107,cblack;,b,cblack;,c107107107,cblack;,c000000127,cblack;,c127000127,cblack;,c107107107,cblack;,c000000127,cblack;,c000000127,c000127000,c127000000,cblack;,c000000127,cblack;,c107107107,cblack;,c000000127,c000127000,cblack;,c000127127,cblack;,c107107107,cblack;,b,cblack;,c000000127,cblack;,c127000127,cblack;,c107107107,cblack;,c000000127,cblack;,c107107107,cblack;,c000000127,cblack;,c107107107,cblack;,c000000127,cblack;,c000000127,c000127000,cblack;,c000000127,cblack;,c000000127,c000127000,cblack;,c107107107,cblack;,c000000127,cblack;,c000000127,cblack;,c107107107,cblack;,c000000127,cblack;,!' readStream nextChunkText