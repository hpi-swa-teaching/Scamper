parsing
readDisplayFrom: aCSSProperty to: aContext

	| values |
	values := Dictionary newFrom: {
		'inline' -> #inline.
		'inline-block' -> #inlineBlock.
		'block' -> #block.
		'table' -> #table.
		'table-row' -> #tableRow.
		'table-cell' -> #tableCell
	}.
	values at: aCSSProperty propertyString asLowercase
		ifPresent: [:value | aContext at: #block put: value ]
		ifAbsent: [ (aContext includesKey: #block) ifFalse: [ aContext at: #block put: #inline ]]