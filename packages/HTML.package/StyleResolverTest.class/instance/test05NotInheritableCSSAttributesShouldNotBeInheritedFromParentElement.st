testing
test05NotInheritableCSSAttributesShouldNotBeInheritedFromParentElement
	| props node |

	props := CSSStyleRule new
		addProperty: ((CSSProperty propertyNamed: 'display') propertyString: 'block').
	
	node := HtmlDOMNode new.
	HtmlDOMNode new 
		addStyle: props;
		children: { node }.	

	self assert: (self styleResolver getStyle: #bold for: node) equals: nil