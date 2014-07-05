testing
test01TextDecorationUnderlinedShouldBeParsedCorrectly
	| prop result |
	result := Dictionary new.
	prop := CSSProperty new
				propertyName: 'text-decoration';
				propertyString: 'underline';
				yourself.
	self textFormatter parseTextAttributesFrom: prop into: result.
	self assert: true equals: (result at: #underlined)