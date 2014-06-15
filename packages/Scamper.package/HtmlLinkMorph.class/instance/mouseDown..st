event handling
mouseDown: evt
	self node href ifNotNil: [:target | (TextURL new url: target) actOnClickFor: self ].
	Cursor currentCursor == Cursor webLink ifTrue: [Cursor normal show]