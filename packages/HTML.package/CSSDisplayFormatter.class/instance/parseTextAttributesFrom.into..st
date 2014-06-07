as yet unclassified
parseTextAttributesFrom: aCSSProperty into: aContext
	aCSSProperty propertyName = 'display' ifTrue: [
		| values |
		values := Dictionary newFrom: {
			'inline' -> #inline.
			'inline-block' -> #inlineBlock.
			'block' -> #block
		}.
		values at: aCSSProperty propertyString asLowercase
			ifPresent: [:value | aContext at: #block put: value ]
			ifAbsent: [ (aContext includesKey: #block) ifFalse: [ aContext at: #block put: #inline ]]]