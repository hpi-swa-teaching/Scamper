testing
bottomAttributeShouldBeParsedCorrectly

	| aProperty aResult |

	aResult := Dictionary new.
	aProperty := CSSProperty new
				propertyName: self bottomAttribute asSymbol;
				propertyString: '40px';
				yourself.
	self formatter parseTextAttributesFrom: aProperty into: aResult.
	self assert: 40 equals: (aResult at: self bottomAttribute asSymbol)