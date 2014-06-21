drawing
drawBackgroundColor: fillColor On: aCanvas
	| fillStyle |			
	fillStyle := SolidFillStyle color: fillColor.
	aCanvas fillRectangle: self bounds fillStyle: fillStyle borderStyle: self borderStyle