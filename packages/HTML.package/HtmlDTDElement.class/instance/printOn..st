accessing
printOn: aStream

	aStream nextPutAll: 'E('.
	tag printOn: aStream.
	aStream space; 
	nextPutAll: startIsOptional; space;
	nextPutAll: endIsOptional; space.
	contentRule printOn: aStream.
	aStream nextPut: $)