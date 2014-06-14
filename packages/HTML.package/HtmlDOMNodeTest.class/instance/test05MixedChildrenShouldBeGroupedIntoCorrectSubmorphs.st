testing
test05MixedChildrenShouldBeGroupedIntoCorrectSubmorphs

	| doc result |
	doc := HtmlDocument new 
		content: 'testeinszweidrei';
		children: {self domNode}.
	self domNode children: { 
		HtmlCDATANode start: 0 end: 4. 
		HtmlDIVNode new.
		HtmlCDATANode start: 4 end: 8.
		HtmlCDATANode start: 8 end: 12.
		HtmlDIVNode new.
		HtmlCDATANode start: 12 end: 16}.
	result := self domNode getHtmlBlockMorph.
	self assert: result submorphs size equals: 5.
	self assert: result submorphs first class equals: HtmlInlineMorph.
	self assert: result submorphs first text asString equals: 'test'.
	self assert: result submorphs second class equals: HtmlBlockMorph.
	self assert: result submorphs third class equals: HtmlInlineMorph.
	self assert: result submorphs third text asString equals: 'einszwei'.
	self assert: result submorphs fourth class equals: HtmlBlockMorph.
	self assert: result submorphs fifth class equals: HtmlInlineMorph.
	self assert: result submorphs fifth text asString equals: 'drei'