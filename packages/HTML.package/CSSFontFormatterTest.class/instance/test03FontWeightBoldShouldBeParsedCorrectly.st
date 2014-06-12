testing
test03FontWeightBoldShouldBeParsedCorrectly
	| prop result |
	result := Dictionary new.
	prop := CSSProperty new
				propertyName: 'font-weight';
				propertyString: 'bold';
				yourself.
	self fontFormatter parseTextAttributesFrom: prop into: result.
	self assert: (result at: #bold) equals: true.