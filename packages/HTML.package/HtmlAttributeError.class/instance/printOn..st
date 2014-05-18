as yet unclassified
printOn: aStream

	super printOn: aStream.
	aStream nextPutAll: ' Attribute: '.
	self attribute printOn: aStream.
	aStream space.
	self parent prefix printOn: aStream.
	aStream nextPut: $..