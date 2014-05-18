accessing
printOn: aStream

	self attribute printOn: aStream.
	aStream nextPutAll: ' is specified multiple times in '.
	self parent prefix printOn: aStream.
	aStream nextPutAll: '.'