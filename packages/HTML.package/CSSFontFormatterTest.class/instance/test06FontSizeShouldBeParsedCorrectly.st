testing
test06FontSizeShouldBeParsedCorrectly
	| prop result |
	result := Dictionary new.
	prop := CSSProperty new
				propertyName: 'font-size';
				propertyString: '12pt';
				yourself.
	self fontFormatter parseTextAttributesFrom: prop into: result.
	self assert: 12 / 72 * TextStyle pixelsPerInch equals: (result at: #fontSize).