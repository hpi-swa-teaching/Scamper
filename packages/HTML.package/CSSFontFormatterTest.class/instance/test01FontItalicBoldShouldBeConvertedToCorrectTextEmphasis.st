testing
test01FontItalicBoldShouldBeConvertedToCorrectTextEmphasis
	| prop result |
	prop := CSSProperty new
				propertyName: 'font';
				propertyString: 'italic bold';
				yourself.
	result := self fontFormatter parseTextAttributesFrom: prop.
	self assert: result size equals: 2.
	self assert: (result anySatisfy: [:attr | attr emphasisCode = TextEmphasis italic emphasisCode ]).
	self assert: (result anySatisfy: [:attr | attr emphasisCode = TextEmphasis bold emphasisCode ]).