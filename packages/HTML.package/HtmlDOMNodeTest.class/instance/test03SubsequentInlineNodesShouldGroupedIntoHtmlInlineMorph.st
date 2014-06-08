testing
test03SubsequentInlineNodesShouldGroupedIntoHtmlInlineMorph

	| doc result |
	doc := HtmlDocument new 
		content: 'testeins';
		children: {self domNode}.
	self domNode children: { HtmlCDATANode start: 0 end: 4. HtmlCDATANode start: 4 end: 8 }.
	result := self domNode getHtmlBlockMorph.
	self assert: result submorphs size equals: 1.
	self assert: result submorphs first class equals: HtmlInlineMorph.
	self assert: result submorphs first text asString equals: 'testeins'