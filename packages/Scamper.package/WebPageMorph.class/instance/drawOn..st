drawing
drawOn: aCanvas 
	super drawOn: aCanvas.
	image isNil ifFalse: [aCanvas image: image at: bounds origin]