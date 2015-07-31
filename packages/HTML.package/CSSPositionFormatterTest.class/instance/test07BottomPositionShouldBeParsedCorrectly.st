testing
test07BottomPositionShouldBeParsedCorrectly
	| prop result |
	result := Dictionary new.
	prop := CSSProperty new
				propertyName: 'bottom';
				propertyString: '30px';
				yourself.
	self positionFormatter parseTextAttributesFrom: prop into: result.
	self assert: '30px' equals: (result at: #bottom)