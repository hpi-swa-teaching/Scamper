rendering
renderChildrenInto: aHtmlBlockMorph
	| inlineNodes |
	
	inlineNodes := OrderedCollection new.
	self children do: [ :child | child isRenderedInline
			ifTrue: [ inlineNodes add: child ]
			ifFalse: [ self flushInlineNodes: inlineNodes to: aHtmlBlockMorph;
						flushBlockNode: child to: aHtmlBlockMorph] ].
	self flushInlineNodes: inlineNodes to: aHtmlBlockMorph