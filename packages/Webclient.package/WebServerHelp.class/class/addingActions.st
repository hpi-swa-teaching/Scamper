pages
addingActions
	"This method was automatically generated. Edit it using:"
	"WebServerHelp edit: #addingActions"
	^HelpTopic
		title: 'Adding Actions'
		contents: 
'Let''s add some real stuff that might be useful on a server:

	WebServer default addService: ''/smalltalk'' action:[:req| | action |
		action := (req fields at: ''get'' ifAbsent:['''']) asSymbol.
		req send200Response: (Smalltalk perform: action) asString
	].

We can now request some interesting things like:

	(WebClient httpGet:''http://localhost:8080/smalltalk?get=systemInformationString'') content.
	(WebClient httpGet:''http://localhost:8080/smalltalk?get=platformName'') content.
	
Obviously, this poses quite a risk for abuse. One way to limit this risk is to expose specific actions, such as here:

	#(systemInformationString platformName) do:[:symbol|
		WebServer default addService: ''/info/'', symbol action:[:req|
			req send200Response: (Smalltalk perform: symbol) asString]].

	(WebClient httpGet:''http://localhost:8080/info/systemInformationString'') content.
	(WebClient httpGet:''http://localhost:8080/info/platformName'') content.

Alternatively, authentication can be used to limit access to exposed resources. 
!
]style[(61 11 7 1 11 1 12 1 7 2 3 1 1 1 1 6 1 1 3 6 1 2 1 1 3 1 6 1 3 1 5 1 9 4 1 1 8 4 3 1 16 1 1 10 8 1 6 1 1 8 5 51 12 8 61 2 7 14 8 50 2 7 2 121 3 23 1 12 2 3 2 6 1 13 7 1 11 1 8 1 1 6 1 7 1 1 3 1 4 3 1 16 1 1 10 8 1 6 1 1 8 1 3 1 12 8 52 2 7 14 8 41 2 7 2 82),cblack;,c000000127,cblack;,c000000127,cblack;,c127000127,cblack;,c000000127,cblack;,c000000127,cgray;,cblack;,cgray;,cblack;,cgray;,cblack;,cgray;,cblack;,cgray;,cblack;,b,cblack;,c000127000,c000000127,cblack;,c000000127,cblack;,c000000127,cblack;,c127000127,cblack;,c000000127,c127000127,c000127000,cblack;,c000000127,cblack;,c000000127,cblack;,c000000127,cblack;,c000127000,cblack;,c000000127,cblack;,cgray;,c000127000,cblack;,c000000127,cblack;,,cblack;,c000000127,c127000127,cblack;,c000000127,cblack;,c000000127,c127000127,cblack;,c000000127,cblack;,,cblack;,c000000127,cblack;,c000000127,cblack;,c000000127,cblack;,c000000127,cgray;,cblack;,c000000127,cblack;,c000000127,cblack;,c127000127,c000000127,cblack;,c000000127,cblack;,c000000127,c000127000,cblack;,c000000127,cgray;,cblack;,c000000127,cblack;,c000000127,cblack;,c127000127,cblack;,c000000127,cblack;,c000000127,c127000127,cblack;,c000000127,c000127000,cblack;,,cblack;,c000000127,c127000127,cblack;,c000000127,cblack;,c000000127,c127000127,cblack;,c000000127,cblack;,!' readStream nextChunkText