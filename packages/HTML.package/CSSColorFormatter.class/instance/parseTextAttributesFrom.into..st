as yet unclassified
parseTextAttributesFrom: aCSSProperty into: aContext
	aCSSProperty propertyName = 'color' ifFalse: [^nil].
	(Color fromHTMLString: aCSSProperty propertyString) ifNotNilDo:
		[:color | aContext at: #color put: color].