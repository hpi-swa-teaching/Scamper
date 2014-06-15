drawing
drawBackground: anImage withRepeat: repeat On: aCanvas
	| fillBounds fillStyle |
	fillBounds := self bounds.
	fillStyle := BitmapFillStyle fromForm: anImage.
	
	(repeat == #repeatX or: [ repeat == #noRepeat])
		ifTrue: [ fillBounds := fillBounds withHeight: anImage height ].
	(repeat == #repeatY or: [ repeat == #noRepeat]) 
		ifTrue: [ fillBounds := fillBounds withWidth: anImage width ].
	
	aCanvas fillRectangle: fillBounds fillStyle: fillStyle borderStyle: self borderStyle