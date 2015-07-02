testing
test06twoShorthandAttributesShouldBeParsedCorrectly

	| aProperty aResult |

	aResult := Dictionary new.
	aProperty := CSSProperty new
				propertyName: self prefix;
				propertyString: '70px 80px';
				yourself.
	self paddingFormatter parseTextAttributesFrom: aProperty into: aResult.
	self assert: '70px' equals: (aResult at: #self topAttribute).
	self assert: '80px' equals: (aResult at: #self rightAttribute).
	self assert: '70px' equals: (aResult at: #self bottomAttribute).
	self assert: '80px' equals: (aResult at: #self leftAttribute)