drawing
drawBackground: anImage withRepeat: repeat On: aCanvas
	| fillBounds fillStyle |
	fillBounds := self bounds.
	fillStyle := BitmapFillStyle fromForm: anImage.
	fillStyle origin: fillBounds origin.
	
	(repeat == #repeatX or: [ repeat == #noRepeat])
		ifTrue: [ fillBounds := fillBounds withHeight: anImage height ].
	(repeat == #repeatY or: [ repeat == #noRepeat]) 
		ifTrue: [ fillBounds := fillBounds withWidth: anImage width ].
	
	aCanvas balloonFillRectangle: fillBounds fillStyle: fillStyle