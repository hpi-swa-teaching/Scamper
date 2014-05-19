accessing
printOn: aStream

	super printOn: aStream.
	aStream nextPut: $ .
	('Actual tag nesting order found in document is: ', self nesting asString) printOn: aStream.