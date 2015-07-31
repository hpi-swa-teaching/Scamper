testing
rightAttributeShouldBeParsedCorrectly

	| aProperty aResult |

	aResult := Dictionary new.
	aProperty := CSSProperty new
				propertyName: self rightAttribute asSymbol;
				propertyString: '30px';
				yourself.
	self formatter parseTextAttributesFrom: aProperty into: aResult.
	self assert: '30px' equals: (aResult at: self rightAttribute asSymbol)