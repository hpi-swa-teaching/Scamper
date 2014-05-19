parsing
readFontWeightAttribute: aString to: aDictionary
	| map |
	map := Dictionary newFrom: {
		'bold' -> true.
		'normal' -> false
	}.
	
	(map at: aString ifAbsent: [nil]) ifNotNilDo: [:value | aDictionary at: #bold put: value]