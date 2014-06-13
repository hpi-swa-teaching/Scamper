testing
test12InlineNodesShouldBeAssignedToHtmlInlineMorph

	| doc result inlineNodes |
	doc := HtmlDocument new 
		content: 'testeins';
		children: {self domNode}.
	inlineNodes :=  { HtmlCDATANode start: 0 end: 4. HtmlCDATANode start: 4 end: 8 }..
	self domNode children: inlineNodes.
	result := self domNode getHtmlBlockMorph.
	self assert: result submorphs first nodes size equals: inlineNodes size.
	self assert: (result submorphs first nodes allSatisfy: [:node | inlineNodes includes: node ])