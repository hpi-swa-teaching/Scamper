testing
test07TextAlignJustifyShouldBeParsedCorrectly
	| prop result |
	result := Dictionary new.
	prop := CSSProperty new
				propertyName: 'text-align';
				propertyString: 'justify';
				yourself.
	self textFormatter parseTextAttributesFrom: prop into: result.
	self assert: #justified equals: (result at: #textAlign).
	self assert: (TextAlignment respondsTo: #justified)