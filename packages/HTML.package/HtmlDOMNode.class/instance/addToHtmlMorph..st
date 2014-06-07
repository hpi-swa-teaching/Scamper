as yet unclassified
addToHtmlMorph: aHtmlBlockMorph
	| inlineNodes |
	
	inlineNodes := OrderedCollection new.
	htmlMorph := self defaultBlockMorph newFor: self.

	self children do: [ :child | child isRenderedInline
			ifTrue: [ inlineNodes add: child ]
			ifFalse: [ self flushInlineNodes: inlineNodes to: htmlMorph;
						flushBlockNode: child to: htmlMorph]
	].
	self flushInlineNodes: inlineNodes to: htmlMorph.
	
	aHtmlBlockMorph addChild: htmlMorph.