printing
printOn: aStream

	aStream nextPut: $+.
	expression printOn: aStream.

