testing
threeShorthandAttributesShouldBeParsedCorrectly

	| aProperty aResult |

	aResult := Dictionary new.
	aProperty := CSSProperty new
				propertyName: self completeAttribute asSymbol;
				propertyString: '80px 90px 100px';
				yourself.
	self formatter parseTextAttributesFrom: aProperty into: aResult.
	self assert: 80 equals: (aResult at: self topAttribute asSymbol).
	self assert: 90 equals: (aResult at: self rightAttribute asSymbol).
	self assert: 100 equals: (aResult at: self bottomAttribute asSymbol).
	self assert: 90 equals: (aResult at: self leftAttribute asSymbol)