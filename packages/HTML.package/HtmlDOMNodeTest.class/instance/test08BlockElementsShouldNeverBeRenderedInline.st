testing
test08BlockElementsShouldNeverBeRenderedInline

	self domNode 
		computedStyles: (Dictionary newFrom: { #display -> #block });
		children: { HtmlCDATANode new }.
	self assert: self domNode isRenderedInline equals: false