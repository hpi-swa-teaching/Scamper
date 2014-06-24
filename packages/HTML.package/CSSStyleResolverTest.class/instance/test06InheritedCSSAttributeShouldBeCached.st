testing
test06InheritedCSSAttributeShouldBeCached
	| node parent |
	
	node := HtmlDOMNode new.
	parent := HtmlDOMNode new 
		computedStyles: (Dictionary newFrom: { #bold -> true });
		children: { node }.

	self styleResolver getStyle: #bold for: node.	
	parent computedStyles at: #bold put: false.
	self assert: (self styleResolver getStyle: #bold for: node) equals: true