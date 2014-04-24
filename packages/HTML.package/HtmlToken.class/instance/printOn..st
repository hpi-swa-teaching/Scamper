printing
printOn: aStream
	aStream nextPutAll: '{';
		nextPutAll: self class name;
		nextPut: $:;
		nextPutAll: self source;
		nextPut: $}.