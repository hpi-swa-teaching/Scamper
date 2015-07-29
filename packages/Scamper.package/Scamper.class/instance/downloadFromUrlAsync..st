changing page
downloadFromUrlAsync: aUrl
	| promise downloadWork handled|
	promise := Promise new.
	handled := false.

	downloadWork := [ | newSource |
		
		"webpage"
		(self isUrl: aUrl) ifTrue: [newSource := [self getContentFromWeb: aUrl] ifError: [ :msg :ctx |
		MIMEDocument contentType: 'text/plain' content: msg ]. handled := true.].
		"intern site"
		(self isInternBrowserUrl: aUrl) ifTrue: [newSource := [ aUrl getlocalContentsforBrowser: self ] ifError: [ :msg :ctx |
		MIMEDocument contentType: 'text/plain' content: msg ]. handled := true.].
		"file"
		handled ifFalse: [Transcript show: aUrl; cr. [newSource := aUrl retrieveContentsForBrowser: self] ifError: [ :msg :ctx |
		MIMEDocument contentType: 'text/plain' content: msg ]. handled := true.].

		newSource 
			ifNil: [ newSource := MIMEDocument contentType: 'text/plain' content: 'Error retrieving this URL' translated].

		newSource url ifNil: [
			newSource := MIMEDocument contentType: newSource contentType  content: newSource content  url: aUrl ].

		downloadingProcess := nil.
		promise resolveWith: newSource ].
	
	downloadingProcess := downloadWork forkAt: Processor userBackgroundPriority.

	^ promise