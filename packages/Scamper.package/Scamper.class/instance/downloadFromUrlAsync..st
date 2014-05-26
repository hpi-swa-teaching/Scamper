changing page
downloadFromUrlAsync: aUrl
	| promise downloadWork |
	promise := Promise new.

	downloadWork := [ | newSource |
		newSource := [ aUrl retrieveContentsForBrowser: self ] ifError: [ :msg :ctx |
		MIMEDocument contentType: 'text/plain' content: msg ].

		newSource 
			ifNil: [ newSource := MIMEDocument contentType: 'text/plain' content: 'Error retrieving this URL' translated].

		newSource url ifNil: [
			newSource := MIMEDocument contentType: newSource contentType  content: newSource content  url: aUrl ].

		downloadingProcess := nil.
		promise resolveWith: newSource ].
	
	downloadingProcess := downloadWork forkAt: Processor userBackgroundPriority.

	^ promise