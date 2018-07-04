testing
test03DefaultFallbackDisplayValueShouldNotOverrideSupportedValue
	| styles |
	styles := Dictionary newFrom: { #display -> #inlineBlock }.
	self displayFormatter 
		parseTextAttributesFrom: ((CSSProperty propertyNamed: 'display') propertyString: 'foobar')  
		into: styles.
	self assert: (styles at: #display) equals: #inlineBlock