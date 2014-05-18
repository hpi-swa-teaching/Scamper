printing
printOn: aStream

	aStream nextPutAll: self propertyName; nextPutAll: ': '; nextPutAll: valueString; nextPutAll: '; '