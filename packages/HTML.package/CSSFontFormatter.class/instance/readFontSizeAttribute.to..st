parsing
readFontSizeAttribute: aString to: aContext
	| defaultSize parentFontSize|
	defaultSize := TextStyle default defaultFont pointSize.
	parentFontSize := (self parentResolver value: #size) ifNil: [ defaultSize ].
	
	self isRelativeSize: aString
		ifTrue: [aContext at: #size put: 
					(self relativeSizeToPx: aString parentAndDefaultSize: parentFontSize).
				^self].	
	
	self isAbsoluteSize: aString
		ifTrue: [aContext at: #size put: 
					(self absoluteSizeToPx: aString defaultSize: defaultSize).
				^self].
	
	aContext at: #size put: ((self factorForNamedSize: aString) * defaultSize) asInteger