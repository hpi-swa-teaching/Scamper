accessing
printOn: aStream

	super printOn: aStream.
	aStream nextPut: $ ; nextPutAll: self propertyName; nextPut: $ .
	self parent printOn: aStream.