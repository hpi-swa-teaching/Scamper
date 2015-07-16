testing
test05oneShorthandAttributeShouldBeParsedCorrectly
"
	| aProperty aResult |

	aResult := Dictionary new.
	aProperty := CSSProperty new
				propertyName: self prefix;
				propertyString: '60px';
				yourself.
	self paddingFormatter parseTextAttributesFrom: aProperty into: aResult.
	self assert: '60px' equals: (aResult at: #self topAttribute).
	self assert: '60px' equals: (aResult at: #self rightAttribute).
	self assert: '60px' equals: (aResult at: #self bottomAttribute).
	self assert: '60px' equals: (aResult at: #self leftAttribute)"