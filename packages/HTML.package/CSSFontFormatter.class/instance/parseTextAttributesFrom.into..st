parsing
parseTextAttributesFrom: aCSSProperty into: aContext
	self class installFontsIfNecessary.
	(self attributeMap at: aCSSProperty propertyName ifAbsent: [nil])
		ifNotNilDo: [	:process | process value: aCSSProperty value: aContext ]