parsing
factorForNamedSize: aString
	^(Dictionary newFrom: {
		'initial' -> 1.
		'xx-small' -> 0.5.
		'x-small' -> 0.6.
		'small' -> 0.8.
		'medium' -> 1.
		'large' -> 1.5.
		'x-large' -> 2.
		'xx-large' -> 3.
	}) at: aString ifAbsent: [1]