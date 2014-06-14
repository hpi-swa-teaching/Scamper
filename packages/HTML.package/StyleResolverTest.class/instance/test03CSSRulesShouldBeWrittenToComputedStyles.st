testing
test03CSSRulesShouldBeWrittenToComputedStyles
	| props node |

	props := CSSStyleRule new 
		addProperty: ((CSSProperty propertyNamed: 'color') propertyString: '#fff');
		addProperty: ((CSSProperty propertyNamed: 'font-weight') propertyString: 'bold').
	
	node := HtmlDOMNode new 
				addStyle: props;
				yourself.
		
	self styleResolver evaluateLocalStylesFor: node.

	self assert: (node computedStyles at: #bold) equals: true.
	self assert: (node computedStyles at: #color) equals: Color white