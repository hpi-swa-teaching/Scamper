testing
test04UndefinedCSSAttributeShouldBeInheritedFromParentElement
	| props node |

	props := CSSStyleRule new
		addProperty: ((CSSProperty propertyNamed: 'font-weight') propertyString: 'bold').
	
	node := HtmlDOMNode new.
	HtmlDOMNode new 
		addStyle: props;
		children: { node }.	

	self assert: (self styleResolver getStyle: #bold for: node) equals: true