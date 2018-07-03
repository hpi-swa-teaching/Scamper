testing
test02OtherDisplayValuesShouldDefaultToInline
	| styles |
	styles := Dictionary new.
	self displayFormatter 
		parseTextAttributesFrom: ((CSSProperty propertyNamed: 'display') propertyString: 'foobar')  
		into: styles.
	self assert: (styles at: #display) equals: #inline