testing
test02InlineNodesShouldBePlacedInHtmlInlineMorph

	| doc result |
	doc := HtmlDocument new 
		content: 'test';
		children: {self domNode}.
	self domNode children: { HtmlCDATANode start: 0 end: 4 }.
	result := self domNode getHtmlBlockMorph.
	self assert: result submorphs size equals: 1.
	self assert: result submorphs first class equals: HtmlInlineMorph.
	self assert: result submorphs first text asString equals: 'test'