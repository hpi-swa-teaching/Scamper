running
test01BackgroundColorShouldBeParsedCorrectly
	| property result |
	result := Dictionary new.
	property := CSSProperty new
				propertyName: 'background-color';
				propertyString: 'blue';
				yourself.
	self backgroundFormatter parseTextAttributesFrom: property into: result.
	self assert: Color blue equals: (result at: #backgroundColor).