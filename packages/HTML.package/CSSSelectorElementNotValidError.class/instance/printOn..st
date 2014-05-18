accessing
printOn: aStream

	self class printOn: aStream.
	aStream nextPut: $ ; nextPutAll: element; nextPut: $ .
	self parent printOn: aStream.