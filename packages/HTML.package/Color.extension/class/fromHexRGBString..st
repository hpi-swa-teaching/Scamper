*HTML
fromHexRGBString: aString
	| aColorHex |
	aString isEmptyOrNil ifTrue: [ ^nil ].
	aString first = $#
		ifTrue: [ aColorHex := aString allButFirst ]
		ifFalse: [ aColorHex := aString ].
		(aColorHex allSatisfy: [ :each | '0123456789ABCDEFabcdef' includes: each ])
			ifFalse: [ ^ nil ].

		(aColorHex size = 3)
			ifTrue: [
				| green red blue |
				red := (Integer readFrom: (aColorHex first: 1) base: 16) / 15.
				green := (Integer readFrom: (aColorHex copyFrom: 2 to: 2) base: 16) / 15.
				blue := (Integer readFrom: (aColorHex last: 1) base: 16) / 15.
				^self r: red g: green b: blue ].
		(aColorHex size = 6)
			ifTrue: [
				| green red blue |
				red := (Integer readFrom: (aColorHex first: 2) base: 16) / 255.
				green := (Integer readFrom: (aColorHex copyFrom: 3 to: 4) base: 16) / 255.
				blue := (Integer readFrom: (aColorHex last: 2) base: 16) / 255.
				^self r: red g: green b: blue ].

	^nil