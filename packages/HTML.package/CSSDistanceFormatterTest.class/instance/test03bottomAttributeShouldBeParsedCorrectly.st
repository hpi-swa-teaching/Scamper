testing
test03bottomAttributeShouldBeParsedCorrectly
"
	| aProperty aResult |

	aResult := Dictionary new.
	aProperty := CSSProperty new
				propertyName: self bottomAttribute;
				propertyString: '40px';
				yourself.
	self paddingFormatter parseTextAttributesFrom: aProperty into: aResult.
	self assert: '40px' equals: (aResult at: #self bottomAttribute)"