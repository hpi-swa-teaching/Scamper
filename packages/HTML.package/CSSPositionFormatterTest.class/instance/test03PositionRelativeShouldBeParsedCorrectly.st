testing
test03PositionRelativeShouldBeParsedCorrectly
	| prop result |
	result := Dictionary new.
	prop := CSSProperty new
				propertyName: 'position';
				propertyString: 'relative';
				yourself.
	self positionFormatter parseTextAttributesFrom: prop into: result.
	self assert: #relative equals: (result at: #position)