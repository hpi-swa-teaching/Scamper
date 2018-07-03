testing
test09InlineElementsShouldBeRenderedAsBlockIfContainingBlockChildren

	self domNode
		computedStyles: (Dictionary newFrom: { #display -> #inline });
		children: { HtmlCDATANode new. HtmlDIVNode new }.
	self assert: self domNode isRenderedInline equals: false