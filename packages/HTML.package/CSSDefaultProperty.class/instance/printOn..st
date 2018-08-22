printing
printOn: aStream
	aStream nextPutAll: (self propertyName, ':', self propertyString)
	