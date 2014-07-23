accessing
printOn:aStream

	aStream nextPut: $#.
	aStream nextPutAll: self value.