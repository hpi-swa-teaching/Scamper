formatting commands
parseCSSProperty: aCSSProperty into: aContext

	(self getFormatterFor: aCSSProperty)
		ifNotNilDo: [:formatter | formatter parseTextAttributesFrom: aCSSProperty into: aContext ]