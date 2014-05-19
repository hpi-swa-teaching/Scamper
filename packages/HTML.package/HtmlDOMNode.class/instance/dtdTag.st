accessing
dtdTag

	^self dtd isXML ifFalse: [self tag asUppercase] ifTrue: [self tag]