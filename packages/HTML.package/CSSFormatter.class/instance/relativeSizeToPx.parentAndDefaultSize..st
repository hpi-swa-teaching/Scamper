size-conversion
relativeSizeToPx: aString parentAndDefaultSize: aNumber
	| value |
	aString ifNil: [^aNumber].
	value := aString asNumber.
	value ifNil: [^aNumber].
	
	((aString endsWith: 'em') or: [aString endsWith: 'ex']) ifTrue: [ ^value * aNumber ].
	(aString endsWith: '%') ifTrue: [ ^value / 100 * aNumber ].

	^aNumber.