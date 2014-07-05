layout
updateDocumentSize
	| documentWidth |	
	documentMorph ifNotNil: [ :dm |
		documentWidth := self documentMorph preferredMinimumWidth.
		(documentWidth == #auto)
			ifTrue: [ self documentMorph setWidth: self scroller width ]
			ifFalse: [ self documentMorph setWidth: (self scroller width max: documentWidth) ].
		documentMorph setMinimumHeight: (self scroller height)].