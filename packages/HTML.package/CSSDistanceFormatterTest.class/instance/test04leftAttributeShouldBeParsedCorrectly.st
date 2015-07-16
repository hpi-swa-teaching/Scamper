testing
test04leftAttributeShouldBeParsedCorrectly
"
	| aProperty aResult |

	aResult := Dictionary new.
	aProperty := CSSProperty new
				propertyName: self leftAttribute;
				propertyString: '50px';
				yourself.
	self paddingFormatter parseTextAttributesFrom: aProperty into: aResult.
	self assert: '50px' equals: (aResult at: #self leftAttribute)"