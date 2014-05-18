printing
printOn: aStream

	self class printOn: aStream. 
	aStream nextPutAll: ': Character: '.
	self position printOn: aStream.
	aStream space.