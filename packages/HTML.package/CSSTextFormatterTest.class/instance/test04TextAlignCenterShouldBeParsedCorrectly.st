testing
test04TextAlignCenterShouldBeParsedCorrectly
	| prop result |
	result := Dictionary new.
	prop := CSSProperty new
				propertyName: 'text-align';
				propertyString: 'center';
				yourself.
	self textFormatter parseTextAttributesFrom: prop into: result.
	self assert: #centered equals: (result at: #textAlign).
	self assert: (TextAlignment respondsTo: #centered)