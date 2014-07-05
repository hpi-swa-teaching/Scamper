testing
test02TextDecorationLineThroughShouldBeParsedCorrectly
	| prop result |
	result := Dictionary new.
	prop := CSSProperty new
				propertyName: 'text-decoration';
				propertyString: 'line-through';
				yourself.
	self textFormatter parseTextAttributesFrom: prop into: result.
	self assert: true equals: (result at: #struckOut)