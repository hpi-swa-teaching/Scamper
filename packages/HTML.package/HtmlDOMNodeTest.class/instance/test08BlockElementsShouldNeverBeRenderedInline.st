testing
test08BlockElementsShouldNeverBeRenderedInline

	self domNode 
		computedStyles: (Dictionary newFrom: { #block -> #block });
		children: { HtmlCDATANode new }.
	self assert: self domNode isRenderedInline equals: false