printing
printOn: aStream

	type printOn: aStream.
	aStream nextPut: ${; 
		nextPutAll: self n asString; 
		nextPut: $,; 
		nextPutAll: self m asString; 
		nextPut: $}.