running
test03BackgroundPositionShouldBeParsedCorrectly
	| property result |
	result := Dictionary new.
	property := CSSProperty new
				propertyName: 'background-position';
				propertyString: '30px 40px';
				yourself.
	self backgroundFormatter parseTextAttributesFrom: property into: result.
	self assert: 30@40 equals: (result at: #backgroundPosition).