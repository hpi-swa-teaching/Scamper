as yet unclassified
printOn: aStream

	super printOn: aStream.
	aStream nextPutAll: (' Tag: ', self tag)