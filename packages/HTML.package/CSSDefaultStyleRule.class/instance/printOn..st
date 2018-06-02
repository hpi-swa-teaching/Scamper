as yet unclassified
printOn: aStream

	aStream nextPutAll: '{'.
	self properties do: [:p |
		p printOn: aStream.
		aStream nextPutAll: ';'].
	aStream nextPutAll: '}'