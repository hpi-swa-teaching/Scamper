testing
test05TopPositionShouldBeParsedCorrectly
	| prop result |
	result := Dictionary new.
	prop := CSSProperty new
				propertyName: 'top';
				propertyString: '10px';
				yourself.
	self positionFormatter parseTextAttributesFrom: prop into: result.
	self assert: '10px' equals: (result at: #top)