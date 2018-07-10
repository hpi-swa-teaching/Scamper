layout
updateDocumentSize
	| documentWidth |	
	self document = #image ifFalse: [
		documentMorph ifNotNil: [ :dm |
			documentWidth := self documentMorph preferredMinimumWidth.
			(documentWidth == #auto)
				ifTrue: [ self documentMorph setWidth: self scroller width ]
				ifFalse: [ self documentMorph setWidth: (self scroller width min: documentWidth) ].
			documentMorph setMinimumHeight: (self scroller height)]. 
	].