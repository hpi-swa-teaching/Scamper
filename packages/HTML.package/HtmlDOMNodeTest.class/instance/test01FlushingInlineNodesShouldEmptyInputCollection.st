testing
test01FlushingInlineNodesShouldEmptyInputCollection
	| blockMorph inlineNodes |
	blockMorph := HtmlBlockMorph new.
	inlineNodes := OrderedCollection newFrom: { HtmlDOMNode new. HtmlDOMNode new }.
	self domNode flushInlineNodes: inlineNodes to: blockMorph.
	self assert: inlineNodes isEmpty