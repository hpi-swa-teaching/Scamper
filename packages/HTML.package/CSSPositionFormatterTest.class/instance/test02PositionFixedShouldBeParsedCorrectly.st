testing
test02PositionFixedShouldBeParsedCorrectly
	| prop result |
	result := Dictionary new.
	prop := CSSProperty new
				propertyName: 'position';
				propertyString: 'fixed';
				yourself.
	self positionFormatter parseTextAttributesFrom: prop into: result.
	self assert: #fixed equals: (result at: #position)