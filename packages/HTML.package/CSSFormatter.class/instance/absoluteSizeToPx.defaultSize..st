size-conversion
absoluteSizeToPx: aString defaultSize: aNumber
	| value |
	aString ifNil: [^aNumber].
	value := (self isNumber: aString) ifTrue: [ aString asNumber] ifFalse: [nil].
	value ifNil: [^aNumber].
	
	(aString endsWith: 'cm') ifTrue: [ ^self inToPx: (self cmToIn: value) ].
	(aString endsWith: 'mm') ifTrue: [ ^self inToPx: (self mmToIn: value) ].
	(aString endsWith: 'in') ifTrue: [ ^self inToPx: value ].
	(aString endsWith: 'pt') ifTrue: [ ^self inToPx: (self ptToIn: value) ].
	(aString endsWith: 'pc') ifTrue: [ ^self inToPx: (self pcToIn: value) ].
	(aString endsWith: 'px') ifTrue: [ ^value ].
	^aNumber