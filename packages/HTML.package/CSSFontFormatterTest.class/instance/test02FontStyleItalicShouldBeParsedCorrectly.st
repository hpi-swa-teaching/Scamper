testing
test02FontStyleItalicShouldBeParsedCorrectly
	| prop result |
	result := Dictionary new.
	prop := CSSProperty new
				propertyName: 'font-style';
				propertyString: 'italic';
				yourself.
	self fontFormatter parseTextAttributesFrom: prop into: result.
	self assert: (result at: #italic) equals: true