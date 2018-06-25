testing
test01FlushingInlineNodesShouldEmptyInputCollection
	| blockMorph inlineNodes |
	blockMorph := HtmlBlockMorph new.
	blockMorph node: self domNode.
	inlineNodes := OrderedCollection newFrom: { HtmlDOMNode new. HtmlDOMNode new }.
	self domNode flushInlineNodes: inlineNodes to: blockMorph.
	self assert: inlineNodes isEmpty