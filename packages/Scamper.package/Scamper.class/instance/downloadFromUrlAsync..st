changing page
downloadFromUrlAsync: aUrl
	| promise downloadWork isUrl content|
	promise := Promise new.

	isUrl:= ('http://*' match: aUrl asString) or: ['https://*' match: aUrl asString].
	isUrl ifTrue: [content:= self getContent: aUrl.].
	isUrl ifFalse: [content:=[ aUrl getlocalContentsforBrowser: self ] ifError: [ :msg :ctx |
		MIMEDocument contentType: 'text/plain' content: msg ].].

	downloadWork := [ | newSource |
		newSource := content.

		newSource 
			ifNil: [ newSource := MIMEDocument contentType: 'text/plain' content: 'Error retrieving this URL' translated].

		newSource url ifNil: [
			newSource := MIMEDocument contentType: newSource contentType  content: newSource content  url: aUrl ].

		downloadingProcess := nil.
		promise resolveWith: newSource ].
	
	downloadingProcess := downloadWork forkAt: Processor userBackgroundPriority.

	^ promise