testing
test07InlineBlockElementsShouldAlwaysBeRenderedInline

	self domNode 
		computedStyles: (Dictionary newFrom: { #block -> #inlineBlock });
		children: { HtmlDIVNode new }.
	self assert: self domNode isRenderedInline equals: true