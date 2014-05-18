pages
authentication
	"This method was automatically generated. Edit it using:"
	"WebClientHelp edit: #authentication"
	^HelpTopic
		title: 'Authentication'
		contents: 
'WebClient supports basic and digest authentication by default. WebClient delegates the retrieval of username/password to WebUtils which prompts the user for credentials. 

WebClient can either be supplied with specific credentials to be used or custom credentials handlers, for example:

	| client |
	client := WebClient new.
	client username: ''squeak''.
	client password: ''squeak''.
	client httpGet: ''http://www.squeak.org/protected''.

Proxy authentication works the same way as authentication but operates on a different authentication context to allow different sets of credentials to work.
!
]style[(288 1 1 1 6 1 1 2 6 1 2 11 3 3 6 1 9 1 8 3 6 1 9 1 8 3 6 1 8 1 33 2 158),cblack;,cgray;,cblack;,c107107107,cblack;,cgray;,cblack;,c107107107,cblack;,b,cblack;,c000000127,cblack;,c107107107,cblack;,c000000127,cblack;,c127000127,cblack;,c107107107,cblack;,c000000127,cblack;,c127000127,cblack;,c107107107,cblack;,c000000127,cblack;,c127000127,cblack;,!' readStream nextChunkText