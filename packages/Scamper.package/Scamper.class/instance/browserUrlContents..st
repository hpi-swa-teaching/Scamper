browser urls
browserUrlContents: aRequest

	aRequest = 'start' ifTrue: [ 
		^MIMEDocument contentType: 'text/html' content: self startPage ].

	aRequest = 'about' ifTrue: [
		^MIMEDocument contentType: 'text/html' content: self aboutScamperHTML ].
	
	aRequest = 'status404' ifTrue: [
		^MIMEDocument contentType: 'text/html' content: self error404Page  ].

	^ nil