testing
test01PositionAbsoluteShouldBeParsedCorrectly
	| prop result |
	result := Dictionary new.
	prop := CSSProperty new
				propertyName: 'position';
				propertyString: 'absolute';
				yourself.
	self positionFormatter parseTextAttributesFrom: prop into: result.
	self assert: #absolute equals: (result at: #position)