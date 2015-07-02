parsing
parseTextAttributesFrom: aCSSProperty into: aContext

	self class installFontsIfNecessary.
	super parseTextAttributesFrom: aCSSProperty into: aContext