as yet unclassified
printOn: aStream

	aStream nextPut: $[;
	 nextPutAll: self attribute;
	 nextPut: $=;	
	 nextPut: $";
	 nextPutAll: self value;
	 nextPut: $";
	 nextPut: $]