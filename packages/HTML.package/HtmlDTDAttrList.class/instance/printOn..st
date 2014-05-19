as yet unclassified
printOn: aStream

	aStream nextPutAll: '@@'; nextPut: $(. 
	tag expression printOn: aStream.
	aStream space.
	self attributes do:
	[:ea | 
		ea printOn: aStream.
		aStream space.
	].
	aStream nextPut: $).