testing
test08fourShorthandAttributesShouldBeParsedCorrectly

	| aProperty aResult |

	aResult := Dictionary new.
	aProperty := CSSProperty new
				propertyName: self prefix;
				propertyString: '90px 100px 110px 120px';
				yourself.
	self paddingFormatter parseTextAttributesFrom: aProperty into: aResult.
	self assert: '90px' equals: (aResult at: #self topAttribute).
	self assert: '100px' equals: (aResult at: #self rightAttribute).
	self assert: '110px' equals: (aResult at: #self bottomAttribute).
	self assert: '120px' equals: (aResult at: #self leftAttribute)