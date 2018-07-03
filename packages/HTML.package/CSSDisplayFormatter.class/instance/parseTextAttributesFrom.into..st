parsing
parseTextAttributesFrom: aCSSProperty into: aContext
	aCSSProperty propertyName = 'display' ifTrue: [
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
			ifPresent: [:value | aContext at: #display put: value ]
			ifAbsent: [ (aContext includesKey: #display) ifFalse: [ aContext at: #display put: #inline ]]]