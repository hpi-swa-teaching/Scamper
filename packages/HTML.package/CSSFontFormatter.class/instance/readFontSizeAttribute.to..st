parsing
readFontSizeAttribute: aString to: aContext
	| defaultSize parentFontSize|
	defaultSize := self class defaultSize.
	parentFontSize := (self parentResolver value: #fontSize) ifNil: [ defaultSize ].
	
	self isRelativeSize: aString
		ifTrue: [aContext at: #fontSize put: 
					(self relativeSizeToPx: aString parentAndDefaultSize: parentFontSize).
				^self].	
	
	self isAbsoluteSize: aString
		ifTrue: [aContext at: #fontSize put: 
					(self absoluteSizeToPx: aString defaultSize: defaultSize).
				^self].
	
	aContext at: #fontSize put: ((self factorForNamedSize: aString) * defaultSize) asInteger