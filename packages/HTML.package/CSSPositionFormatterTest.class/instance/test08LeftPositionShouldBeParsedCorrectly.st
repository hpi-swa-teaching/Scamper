testing
test08LeftPositionShouldBeParsedCorrectly
	| prop result |
	result := Dictionary new.
	prop := CSSProperty new
				propertyName: 'left';
				propertyString: '40px';
				yourself.
	self positionFormatter parseTextAttributesFrom: prop into: result.
	self assert: '40px' equals: (result at: #left)