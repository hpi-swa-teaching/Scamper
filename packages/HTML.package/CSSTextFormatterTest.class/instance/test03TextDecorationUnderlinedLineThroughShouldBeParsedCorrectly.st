testing
test03TextDecorationUnderlinedLineThroughShouldBeParsedCorrectly
	| prop result |
	result := Dictionary new.
	prop := CSSProperty new
				propertyName: 'text-decoration';
				propertyString: 'underline line-through';
				yourself.
	self textFormatter parseTextAttributesFrom: prop into: result.
	self assert: true equals: (result at: #underlined).
	self assert: true equals: (result at: #struckOut)