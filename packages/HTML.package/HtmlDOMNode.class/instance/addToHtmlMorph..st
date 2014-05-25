as yet unclassified
addToHtmlMorph: aHtmlBlockMorph
	| inlineNodes |
	
	inlineNodes := OrderedCollection new.
	htmlMorph := HtmlBlockMorph newFor: self.
	
	self children do: [ :child | child isInline
			ifTrue: [ inlineNodes add: child ]
			ifFalse: [ self flushInlineNodes: inlineNodes to: htmlMorph;
						flushBlockNode: child to: htmlMorph]
	].
	self flushInlineNodes: inlineNodes to: htmlMorph.
	
	aHtmlBlockMorph addChild: htmlMorph.