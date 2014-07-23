printing
printOn: aStream

	aStream nextPut: $"; nextPutAll: expression; nextPut:$".
	