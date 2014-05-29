testing
test01ColorShouldBeParsedCorrectly
	| prop result |
	result := Dictionary new.
	prop := CSSProperty new
				propertyName: 'color';
				propertyString: 'blue';
				yourself.
	self colorFormatter parseTextAttributesFrom: prop into: result.
	self assert: Color blue equals: (result at: #color).