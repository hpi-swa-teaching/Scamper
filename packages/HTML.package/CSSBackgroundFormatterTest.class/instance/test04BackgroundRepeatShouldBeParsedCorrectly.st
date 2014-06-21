running
test04BackgroundRepeatShouldBeParsedCorrectly
	| property result |
	result := Dictionary new.
	property := CSSProperty new
				propertyName: 'background-repeat';
				propertyString: 'repeat-x';
				yourself.
	self backgroundFormatter parseTextAttributesFrom: property into: result.
	self assert: #repeatX equals: (result at: #backgroundRepeat).