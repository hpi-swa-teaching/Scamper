testing
test05TextAlignLeftShouldBeParsedCorrectly
	| prop result |
	result := Dictionary new.
	prop := CSSProperty new
				propertyName: 'text-align';
				propertyString: 'left';
				yourself.
	self textFormatter parseTextAttributesFrom: prop into: result.
	self assert: #leftFlush equals: (result at: #align).
	self assert: (TextAlignment respondsTo: #leftFlush)