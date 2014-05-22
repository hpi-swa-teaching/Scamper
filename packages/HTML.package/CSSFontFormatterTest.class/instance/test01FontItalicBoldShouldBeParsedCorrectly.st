testing
test01FontItalicBoldShouldBeParsedCorrectly
	| prop result |
	result := Dictionary new.
	prop := CSSProperty new
				propertyName: 'font';
				propertyString: 'italic bold medium Verdana';
				yourself.
	self fontFormatter parseTextAttributesFrom: prop into: result.
	self assert: true equals: (result at: #italic).
	self assert: true equals: (result at: #bold)