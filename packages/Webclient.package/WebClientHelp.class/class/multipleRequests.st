pages
multipleRequests
	"This method was automatically generated. Edit it using:"
	"WebClientHelp edit: #multipleRequests"
	^HelpTopic
		title: 'Multiple Requests'
		contents: 
'WebClient can and should be used for multiple requests to the same host. This will ensure persistent connections as well as having cookies processed properly within one session:

	| client resp |
	client := WebClient new.
	resp := client httpGet: ''http://www.squeak.org/''.
	resp := client httpGet: ''http://www.squeak.org/Download''.
	resp := client httpGet: ''http://www.squeak.org/Features''.
	client close.

One important issue to keep in mind is that because WebClient is optimized for persistent connections, you need to close it when you are done. That is not true for WebClient''s class-side convenience APIs, which prefetch the response and close the socket. Generally speaking, whenever you say ''WebClient new'' you need to close the client when you''re done (however, you can do so by sending #close to a response you''ve received). For example:

	"Convenience API. Don''t need to close, but prefetches result."
	WebClient httpGet: ''http://www.squeak.org''.

	| client resp |
	"Regular use. Create WebClient, return after header is read ..."
	client := WebClient new.
	[response := client httpGet: ''http://www.squeak.org/''.
	"... then fetch (or stream) the content ..."
	response content.
	] ensure:[
		"... and close the client when done."
		client close.
	].!
]style[(179 1 1 1 6 1 4 1 1 2 6 1 2 11 3 3 4 1 2 1 6 1 8 1 24 3 4 1 2 1 6 1 8 1 32 3 4 1 2 1 6 1 8 1 32 3 6 1 5 2 443 1 62 12 8 1 23 4 1 1 6 1 4 1 1 2 64 1 1 6 1 2 11 3 4 8 1 2 1 6 1 8 1 24 3 44 2 8 1 7 5 7 4 37 3 6 1 5 5),cblack;,cgray;,cblack;,c107107107,cblack;,c107107107,cblack;,cgray;,cblack;,c107107107,cblack;,b,cblack;,c000000127,cblack;,c107107107,cblack;,b,cblack;,c107107107,cblack;,c000000127,cblack;,c127000127,cblack;,c107107107,cblack;,b,cblack;,c107107107,cblack;,c000000127,cblack;,c127000127,cblack;,c107107107,cblack;,b,cblack;,c107107107,cblack;,c000000127,cblack;,c127000127,cblack;,c107107107,cblack;,c000000127,cblack;,,cblack;,c000127127,cblack;,c000000127,cblack;,c127000127,cblack;,cgray;,cblack;,c107107107,cblack;,c107107107,cblack;,cgray;,cblack;,c000127127,,cblack;,c107107107,cblack;,b,cblack;,c000000127,cblack;,c107107107,cblack;,b,cblack;,c107107107,cblack;,c000000127,cblack;,c127000127,cblack;,c000127127,cblack;,c107107107,cblack;,c000000127,cblack;,c000000127,cblack;,c000127127,cblack;,c107107107,cblack;,c000000127,cblack;!' readStream nextChunkText