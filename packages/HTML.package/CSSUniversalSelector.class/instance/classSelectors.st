accessing
classSelectors

	^self selectors select:[:ea | ea isAttributeSelector and: [ea attribute asLowercase = 'class']]