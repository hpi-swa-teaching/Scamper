size-conversion
relativeSizeToPx: aString parentAndDefaultSize: aNumber
	| value parent |
	aString ifNil: [^aNumber].
	value := aString asNumber.
	value ifNil: [^aNumber].
	parent := aNumber ifNil: [TextStyle defaultFont pixelSize].
	
	((aString endsWith: 'em') or: [aString endsWith: 'ex']) ifTrue: [ ^value * parent ].
	(aString endsWith: '%') ifTrue: [ ^value / 100 * parent ].

	^parent.