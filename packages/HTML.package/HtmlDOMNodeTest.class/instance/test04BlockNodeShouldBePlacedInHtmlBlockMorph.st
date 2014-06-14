testing
test04BlockNodeShouldBePlacedInHtmlBlockMorph

	| result |
	self domNode children: { HtmlDIVNode new }.
	result := self domNode getHtmlBlockMorph.
	self assert: result submorphs size equals: 1.
	self assert: result submorphs first class equals: HtmlBlockMorph