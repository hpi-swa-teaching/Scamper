testing
test01topAttributeShouldBeParsedCorrectly

	| aProperty aResult  |

	aResult := Dictionary new.
	aProperty := CSSProperty new
				propertyName: self topAttribute;
				propertyString: '20px';
				yourself.
	self paddingFormatter parseTextAttributesFrom: aProperty into: aResult.
	self assert: '20px' equals: (aResult at: ( self topAttribute) asSymbol)