testing
test04PositionStaticShouldBeParsedCorrectly
	| prop result |
	result := Dictionary new.
	prop := CSSProperty new
				propertyName: 'position';
				propertyString: 'static';
				yourself.
	self positionFormatter parseTextAttributesFrom: prop into: result.
	self assert: #static equals: (result at: #position)