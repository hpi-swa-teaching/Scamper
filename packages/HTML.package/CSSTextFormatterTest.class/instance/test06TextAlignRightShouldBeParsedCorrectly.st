testing
test06TextAlignRightShouldBeParsedCorrectly
	| prop result |
	result := Dictionary new.
	prop := CSSProperty new
				propertyName: 'text-align';
				propertyString: 'right';
				yourself.
	self textFormatter parseTextAttributesFrom: prop into: result.
	self assert: #rightFlush equals: (result at: #textAlign).
	self assert: (TextAlignment respondsTo: #rightFlush)