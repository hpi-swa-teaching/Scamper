formatting commands
getFormatterFor: aCSSProperty
	| prefix |
	prefix := self getPrefixOf: aCSSProperty propertyName.
	^ self cssPrefixMap at: prefix ifAbsent: [nil]