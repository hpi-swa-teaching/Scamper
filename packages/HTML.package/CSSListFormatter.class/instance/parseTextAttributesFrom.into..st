parsing
parseTextAttributesFrom: aCSSProperty into: aContext
	aCSSProperty propertyName = 'list-style-type' ifFalse: [^nil].
	aContext at: #'list-style-type' put: aCSSProperty propertyString.