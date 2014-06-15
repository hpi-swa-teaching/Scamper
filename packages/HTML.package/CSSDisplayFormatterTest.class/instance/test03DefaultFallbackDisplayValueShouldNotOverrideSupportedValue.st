testing
test03DefaultFallbackDisplayValueShouldNotOverrideSupportedValue
	| styles |
	styles := Dictionary newFrom: { #block -> #inlineBlock }.
	self displayFormatter 
		parseTextAttributesFrom: ((CSSProperty propertyNamed: 'display') propertyString: 'foobar')  
		into: styles.
	self assert: (styles at: #block) equals: #inlineBlock