testing
test01SupportedDisplayValuesShouldBeParsedCorrectly
	| supportedValues |
	supportedValues := Dictionary newFrom: {
		'inline' -> #inline.
		'inline-block' -> #inlineBlock.
		'block' -> #block
	}.
	
	supportedValues keysAndValuesDo: [:value :expectedResult |
		| tempContext |
		tempContext := Dictionary new.
		self displayFormatter 
			parseTextAttributesFrom: ((CSSProperty propertyNamed: 'display') propertyString: value)  
			into: tempContext.
		self assert: (tempContext at: #block) equals: expectedResult ]