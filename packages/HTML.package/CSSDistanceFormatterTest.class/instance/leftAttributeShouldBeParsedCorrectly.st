testing
leftAttributeShouldBeParsedCorrectly

	| aProperty aResult |

	aResult := Dictionary new.
	aProperty := CSSProperty new
				propertyName: self leftAttribute asSymbol;
				propertyString: '50px';
				yourself.
	self formatter parseTextAttributesFrom: aProperty into: aResult.
	self assert: 50 equals: (aResult at: self leftAttribute asSymbol)