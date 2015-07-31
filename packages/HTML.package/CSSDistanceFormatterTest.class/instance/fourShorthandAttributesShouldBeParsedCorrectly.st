testing
fourShorthandAttributesShouldBeParsedCorrectly

	| aProperty aResult |

	aResult := Dictionary new.
	aProperty := CSSProperty new
				propertyName: self completeAttribute asSymbol;
				propertyString: '90px 100px 110px 120px';
				yourself.
	self formatter parseTextAttributesFrom: aProperty into: aResult.
	self assert: '90px' equals: (aResult at: self topAttribute asSymbol).
	self assert: '100px' equals: (aResult at: self rightAttribute asSymbol).
	self assert: '110px' equals: (aResult at: self bottomAttribute asSymbol).
	self assert: '120px' equals: (aResult at: self leftAttribute asSymbol)