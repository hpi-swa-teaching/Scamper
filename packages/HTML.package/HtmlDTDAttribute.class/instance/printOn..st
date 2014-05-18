accessing
printOn: aStream

	aStream nextPut: $@; nextPut:$(.
	attribute printOn: aStream.
	aStream space.
	type printOn: aStream.
	aStream space.
	isRequired printOn: aStream.
	aStream nextPut:$).