testing
test06InlineBlockElementsShouldBeTransformedIntoCorrectSubmorphs

	| doc result |
	doc := HtmlDocument new 
		content: 'testeinszwei';
		children: {self domNode}.
	self domNode children: { 
		HtmlCDATANode start: 0 end: 4. 
		HtmlDIVNode new 
			computedStyles: (Dictionary newFrom: { #block -> #inlineBlock });
			children: { HtmlCDATANode start: 4 end: 8 }.
		HtmlCDATANode start: 8 end: 12 }.
	result := self domNode getHtmlBlockMorph.
	self assert: result submorphs size equals: 1.
	self assert: result submorphs first class equals: HtmlInlineMorph.
	self assert: (result submorphs first text findString: 'test' startingAt: 1) > 0.
	self assert: (result submorphs first text findString: 'zwei' startingAt: 1) > 0.
	self assert: result submorphs first submorphs size equals: 1.
	self assert: result submorphs first submorphs first class equals: HtmlBlockMorph.
	self assert: result submorphs first submorphs first submorphs size equals: 1.
	self assert: result submorphs first submorphs first submorphs first class equals: HtmlInlineMorph.
	self assert: result submorphs first submorphs first submorphs first text equals: 'eins'