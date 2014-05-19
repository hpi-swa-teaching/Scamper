testing
test02FontStyleItalicShouldBeConvertedToCorrectTextEmphasis
	| prop result |
	prop := CSSProperty new
				propertyName: 'font-style';
				propertyString: 'italic';
				yourself.
	result := self fontFormatter parseTextAttributesFrom: prop.
	self assert: result size equals: 1.
	self assert: result first emphasisCode equals: TextEmphasis italic emphasisCode