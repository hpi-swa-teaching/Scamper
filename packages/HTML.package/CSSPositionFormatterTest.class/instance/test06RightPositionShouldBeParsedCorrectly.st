testing
test06RightPositionShouldBeParsedCorrectly
	| prop result |
	result := Dictionary new.
	prop := CSSProperty new
				propertyName: 'right';
				propertyString: '20px';
				yourself.
	self positionFormatter parseTextAttributesFrom: prop into: result.
	self assert: '20px' equals: (result at: #right)