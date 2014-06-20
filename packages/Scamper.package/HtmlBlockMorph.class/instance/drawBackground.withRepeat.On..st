drawing
drawBackground: anImage withRepeat: repeat On: aCanvas
	| fillBounds fillStyle |
	fillBounds := self bounds.
	fillStyle := BitmapFillStyle fromForm: anImage.
	"Don't use InfiniteForm-rendering in FormCanvas>>fillRectangle:fillStyle:"
	"No one will *ever* notice that slight offset and stretching of the image"
	fillStyle origin: 0 @ -1.
	fillStyle normal: 0 @ (anImage height + 1).
	
	(repeat == #repeatX or: [ repeat == #noRepeat])
		ifTrue: [ fillBounds := fillBounds withHeight: anImage height ].
	(repeat == #repeatY or: [ repeat == #noRepeat]) 
		ifTrue: [ fillBounds := fillBounds withWidth: anImage width ].
	
	aCanvas fillRectangle: fillBounds fillStyle: fillStyle borderStyle: self borderStyle