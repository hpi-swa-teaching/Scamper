parsing
readFontStyleAttribute: aString to: aDictionary
	| map |
	map := Dictionary newFrom: {
		'italic' -> true.
		'normal' -> false
	}.
	
	(map at: aString ifAbsent: [nil]) ifNotNilDo: [:value | aDictionary at: #italic put: value]