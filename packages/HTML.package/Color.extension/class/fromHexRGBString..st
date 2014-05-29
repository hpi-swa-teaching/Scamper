*HTML
fromHexRGBString: aString
	| aColorHex |
	aString isEmptyOrNil ifTrue: [ ^nil ].
	aString first = $#
		ifTrue: [ aColorHex := aString allButFirst ]
		ifFalse: [ aColorHex := aString ].
	(aColorHex size = 3 and: [ 
		aColorHex allSatisfy: [ :each | '0123456789ABCDEFabcdef' includes: each ] ])
			ifTrue: [
				| green red blue |
				red := (Integer readFrom: (aColorHex first: 1) base: 16) / 15.
				green := (Integer readFrom: (aColorHex copyFrom: 2 to: 2) base: 16) / 15.
				blue := (Integer readFrom: (aColorHex last: 1) base: 16) / 15.
				^self r: red g: green b: blue ].
	^nil