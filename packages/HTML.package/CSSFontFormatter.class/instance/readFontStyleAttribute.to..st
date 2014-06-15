parsing
readFontStyleAttribute: aString to: aContext
	| map |
	map := Dictionary newFrom: {
		'italic' -> true.
		'oblique' -> true.
		'normal' -> false
	}.
	
	(map at: aString ifAbsent: [nil]) ifNotNilDo: [:value | aContext at: #italic put: value]