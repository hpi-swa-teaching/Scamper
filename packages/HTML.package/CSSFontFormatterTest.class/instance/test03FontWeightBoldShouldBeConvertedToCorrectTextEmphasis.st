testing
test03FontWeightBoldShouldBeConvertedToCorrectTextEmphasis
	| prop result |
	prop := CSSProperty new
				propertyName: 'font-weight';
				propertyString: 'bold';
				yourself.
	result := self fontFormatter parseTextAttributesFrom: prop.
	self assert: result size equals: 1.
	self assert: result first emphasisCode equals: TextEmphasis bold emphasisCode