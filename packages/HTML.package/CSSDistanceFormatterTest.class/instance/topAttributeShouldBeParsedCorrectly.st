testing
topAttributeShouldBeParsedCorrectly

	| aProperty aResult  |

	aResult := Dictionary new.
	aProperty := CSSProperty new
				propertyName: self topAttribute asSymbol;
				propertyString: '20px';
				yourself.
	self formatter parseTextAttributesFrom: aProperty into: aResult.
	self assert: 20 equals: (aResult at: self topAttribute asSymbol)