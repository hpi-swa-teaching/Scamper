pages
cookies
	"This method was automatically generated. Edit it using:"
	"WebServerHelp edit: #cookies"
	^HelpTopic
		title: 'Cookies'
		contents: 
'Because of the performance issues with authentication, we''d like to avoid authentication for each request and instead authenticate once and use some persistent session state (cookies). So let''s do that:

	WebServer default addService: ''/smalltalk'' action:[:req| | session |
		session := WebServer default sessionAt: (req cookieAt: ''session'').
		session ifNil:[ "no session, reguire login"
			req send302Response: ''/login?url='', req rawUrl encodeForHTTP.
		] ifNotNil:[ | target action |
			action := (req fields at: ''get'' ifAbsent:['''']) asSymbol.
			req send200Response: (Smalltalk perform: action) asString.
		].
	].

And of course we now need a login service The service will require authentication and provide a session identifier for the client. It then redirects back to where the request was originally made from:

	WebServer default addService: ''/login'' action:[:req| | session |
		WebServer default authenticate: req realm: ''squeak'' methods: #(digest) do:[ | id |
			"We have no session state for now, just remember the session id"
			WebServer default sessionAt: (id := UUID new hex) put: ''''.
			"Send a redirect back to where we came from with a cookie"
			req send302Response: (req fields at: ''url'' ifAbsent:[''/'']) 
				do:[:reply| reply setCookie: ''session'' value: id path: ''/smalltalk'']]].
!
]style[(204 11 7 1 11 1 12 1 7 2 3 1 1 1 1 7 1 1 3 7 1 2 11 7 1 10 1 1 3 1 9 1 9 1 4 7 1 6 1 1 27 4 3 1 16 1 13 1 1 3 1 6 1 13 4 1 1 9 1 1 1 1 6 1 6 1 1 4 6 1 2 1 1 3 1 6 1 3 1 5 1 9 1 2 1 1 1 8 5 3 1 16 1 1 10 8 1 6 1 1 8 4 1 6 203 11 7 1 11 1 8 1 7 2 3 1 1 1 1 7 1 1 13 7 1 13 1 3 1 6 1 8 1 8 3 6 2 3 1 1 1 1 2 1 1 4 64 14 7 1 10 1 1 2 1 2 6 3 1 3 1 1 4 1 2 5 58 4 3 1 16 1 1 3 1 6 1 3 1 5 1 9 1 3 1 1 6 3 1 1 5 1 1 5 1 10 1 9 1 6 1 2 1 5 1 13 1 3),cblack;,c000000127,cblack;,c000000127,cblack;,c127000127,cblack;,c000000127,cblack;,c000000127,cgray;,cblack;,cgray;,cblack;,cgray;,cblack;,cgray;,cblack;,cgray;,cblack;,b,cblack;,c000000127,cblack;,c000000127,cblack;,c000127000,c000000127,cblack;,c000000127,cblack;,c127000127,c000127000,cblack;,cgray;,cblack;,c000000127,c000127000,cblack;,c000127127,cblack;,c000000127,cblack;,c000000127,cblack;,c127000127,c000000127,cblack;,c000000127,cblack;,c000000127,cblack;,c000000127,cblack;,c000127000,cblack;,c000000127,c000127000,cblack;,cgray;,cblack;,cgray;,cblack;,cgray;,cblack;,cgray;,cblack;,cgray;,cblack;,b,cblack;,c127000127,c000000127,cblack;,c000000127,cblack;,c000000127,cblack;,c127000127,cblack;,c000000127,c127000000,c127000127,c127000000,c127000127,cblack;,c000000127,cblack;,c000000127,cblack;,c000000127,cblack;,c127000127,cblack;,c000000127,cblack;,cgray;,c127000127,cblack;,c000000127,cblack;,c000127000,cblack;,,cblack;,c000000127,cblack;,c000000127,cblack;,c127000127,cblack;,c000000127,cblack;,c000000127,cgray;,cblack;,cgray;,cblack;,cgray;,cblack;,cgray;,cblack;,c000000127,cblack;,c000000127,cblack;,c000000127,cblack;,c000000127,cblack;,c127000127,cblack;,c000000127,cblack;,c000000127,cblack;,c000000127,c000127000,cblack;,cgray;,cblack;,cgray;,cblack;,cgray;,cblack;,c000127127,cblack;,c000000127,cblack;,c000000127,cblack;,c127000127,cgray;,cblack;,b,cblack;,c000000127,cblack;,c000000127,c127000127,cblack;,c000000127,cblack;,c127000127,cblack;,c000127127,cblack;,c000000127,cblack;,c000000127,cblack;,c127000127,c000000127,cblack;,c000000127,cblack;,c000000127,cblack;,c127000127,cblack;,c000000127,c127000000,c127000127,c127000000,c127000127,cblack;,c000000127,c127000127,cblack;,c000000127,cgray;,cblack;,c000000127,cblack;,c000000127,cblack;,c127000127,cblack;,c000000127,cblack;,cgray;,cblack;,c000000127,cblack;,c127000127,c000127000,cblack;!' readStream nextChunkText