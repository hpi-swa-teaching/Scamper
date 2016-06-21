browser urls
browserUrlContents: aRequest

	aRequest = 'start' ifTrue: [ 
		^MIMEDocument contentType: 'text/html' content: self startPage ].

	aRequest = 'about' ifTrue: [
		^MIMEDocument contentType: 'text/html' content: self aboutScamperHTML ].
	
	aRequest = '404' ifTrue: [
		^MIMEDocument contentType: 'text/html' content: self error404Page  ].

	^ nil