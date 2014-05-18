accessing
idSelector

	^self selectors detect:[:ea | ea isAttributeSelector and: [ea attribute asLowercase = 'id']] ifNone: [nil]