changing page
downloadFromUrlAsync: aUrl
	| promise downloadWork statusResponse isUrl|
	promise := Promise new.

	isUrl:= aUrl asString includesSubString: '.'.
	Transcript show: isUrl.
	isUrl ifTrue: [statusResponse:= self getHttpStatusCode: aUrl.].

	downloadWork := [ | newSource |
		newSource := [ aUrl retrieveContentsForBrowser: self ] ifError: [ :msg :ctx |
		MIMEDocument contentType: 'text/plain' content: msg ].

		newSource 
			ifNil: [ newSource := MIMEDocument contentType: 'text/plain' content: 'Error retrieving this URL' translated].

		newSource url ifNil: [
			newSource := MIMEDocument contentType: newSource contentType  content: newSource content  url: aUrl ].
		
		statusResponse = 'OK' ifFalse: [newSource:= MIMEDocument contentType: 'text/html'  content: statusResponse].

		downloadingProcess := nil.
		promise resolveWith: newSource ].
	
	downloadingProcess := downloadWork forkAt: Processor userBackgroundPriority.

	^ promise