parsing
readFontSizeAttribute: aString to: aContext
	| defaultSize parentFontSize|
	defaultSize := self class defaultSize.
	parentFontSize := (self parentResolver value: #fontsize) ifNil: [ defaultSize ].
	
	self isRelativeSize: aString
		ifTrue: [aContext at: #fontsize put: 
					(self relativeSizeToPx: aString parentAndDefaultSize: parentFontSize).
				^self].	
	
	self isAbsoluteSize: aString
		ifTrue: [aContext at: #fontsize put: 
					(self absoluteSizeToPx: aString defaultSize: defaultSize).
				^self].
	
	aContext at: #fontsize put: ((self factorForNamedSize: aString) * defaultSize) asInteger