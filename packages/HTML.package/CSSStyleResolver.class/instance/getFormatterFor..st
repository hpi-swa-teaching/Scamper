formatter-resolution
getFormatterFor: aCSSProperty
	| prefix |
	prefix := self getPrefixOf: aCSSProperty propertyName asLowercase.
	^ self cssPrefixMap at: prefix ifAbsent: [nil]