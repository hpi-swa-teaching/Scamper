as yet unclassified
printOn: aStream

	aStream nextPut: $(.
	aStream nextPutAll: (expression joinOn: (' ',(self separator asString),' ')).
	aStream nextPut: $)
