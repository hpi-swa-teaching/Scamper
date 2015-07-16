testing
test07threeShorthandAttributesShouldBeParsedCorrectly
"
	| aProperty aResult |

	aResult := Dictionary new.
	aProperty := CSSProperty new
				propertyName: self prefix;
				propertyString: '80px 90px 100px';
				yourself.
	self paddingFormatter parseTextAttributesFrom: aProperty into: aResult.
	self assert: '80px' equals: (aResult at: #self topAttribute).
	self assert: '90px' equals: (aResult at: #self rightAttribute).
	self assert: '100px' equals: (aResult at: #self bottomAttribute).
	self assert: '90px' equals: (aResult at: #self leftAttribute)"