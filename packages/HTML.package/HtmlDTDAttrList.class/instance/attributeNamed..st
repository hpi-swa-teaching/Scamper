accessing
attributeNamed: aString

	| nm |
	nm := aString asLowercase.
	^self attributes detect:[:ea | ea attribute = nm] ifNone: [nil]