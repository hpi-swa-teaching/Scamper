as yet unclassified
printOn: aStream
	aStream nextPutAll: (self propertyName, ':', self propertyString)
	