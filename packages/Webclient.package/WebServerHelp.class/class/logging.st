pages
logging
	"This method was automatically generated. Edit it using:"
	"WebServerHelp edit: #logging"
	^HelpTopic
		title: 'Logging'
		contents: 
'WebServer supports logging in common log format. In order to tell WebServer where to log to you can either give it a stream:

	WebServer default accessLog: Transcript.

or alternatively a file name, for example:

	WebServer default accessLog: ''/var/log/wsd/access_log''.

When used in the latter form, WebServer opens and closes the file for each log entry which provides additional robustness at the cost of some performance.
!
]style[(126 11 7 1 10 12 46 11 7 1 10 1 25 1 157),cblack;,c000000127,cblack;,c000000127,cblack;,,cblack;,c000000127,cblack;,c000000127,cblack;,c127000127,cblack;,!' readStream nextChunkText