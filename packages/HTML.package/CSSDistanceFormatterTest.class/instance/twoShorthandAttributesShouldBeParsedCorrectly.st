testing
twoShorthandAttributesShouldBeParsedCorrectly

	| aProperty aResult |

	aResult := Dictionary new.
	aProperty := CSSProperty new
				propertyName: self completeAttribute asSymbol;
				propertyString: '70px 80px';
				yourself.
	self formatter parseTextAttributesFrom: aProperty into: aResult.
	self assert: '70px' equals: (aResult at: self topAttribute asSymbol).
	self assert: '80px' equals: (aResult at: self rightAttribute asSymbol).
	self assert: '70px' equals: (aResult at: self bottomAttribute asSymbol).
	self assert: '80px' equals: (aResult at: self leftAttribute asSymbol)