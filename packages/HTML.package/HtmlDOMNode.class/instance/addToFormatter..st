rendering
addToFormatter: aFormatter
	self boxType == #inline ifTrue: [
		self startStyles: aFormatter.
		self children do: [:e | e addToFormatter: aFormatter ].
		self endStyles: aFormatter ].
	self boxType == #inlineBlock ifTrue: [
		| inlineNodes |	
		inlineNodes := OrderedCollection new.
		htmlMorph := self defaultBlockMorph newFor: self.

		self children do: [ :child | child isRenderedInline
			ifTrue: [ inlineNodes add: child ]
			ifFalse: [ self flushInlineNodes: inlineNodes to: htmlMorph;
						  flushBlockNode: child to: htmlMorph]
		].
		self flushInlineNodes: inlineNodes to: htmlMorph.
		
		self startStyles: aFormatter.
		aFormatter addMorph: htmlMorph.
		self endStyles: aFormatter]