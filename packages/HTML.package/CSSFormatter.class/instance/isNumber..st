size-conversion
isNumber: aString

	(aString size > 0 and: [aString first isDigit])
		ifTrue: [ ^ true ].
		
	(aString size > 1 and: [aString first = $-] and: [aString second isDigit])
		ifTrue: [ ^ true ].
		
	^ false