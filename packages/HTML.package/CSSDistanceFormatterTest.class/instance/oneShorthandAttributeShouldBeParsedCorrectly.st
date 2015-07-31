testing
oneShorthandAttributeShouldBeParsedCorrectly

	| aProperty aResult |

	aResult := Dictionary new.
	aProperty := CSSProperty new
				propertyName: self prefix asSymbol;
				propertyString: '60px';
				yourself.
	self formatter parseTextAttributesFrom: aProperty into: aResult.
	self assert: '60px' equals: (aResult at: self topAttribute asSymbol).
	self assert: '60px' equals: (aResult at: self rightAttribute asSymbol).
	self assert: '60px' equals: (aResult at: self bottomAttribute asSymbol).
	self assert: '60px' equals: (aResult at: self leftAttribute asSymbol)