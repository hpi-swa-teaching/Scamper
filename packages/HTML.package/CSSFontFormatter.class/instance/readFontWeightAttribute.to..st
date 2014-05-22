parsing
readFontWeightAttribute: aString to: aContext
	| map |
	map := Dictionary newFrom: {
		'bold' -> true.
		'normal' -> false
	}.
	
	(map at: aString ifAbsent: [nil]) ifNotNilDo: [:value | aContext at: #bold put: value]