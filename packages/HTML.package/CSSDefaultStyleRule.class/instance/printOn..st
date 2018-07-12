as yet unclassified
printOn: aStream

	| first |
	aStream nextPutAll: '{'.
	first := true.
	self properties do: [:p |
		first ifTrue: [ first := false ] ifFalse: [aStream nextPutAll: ';'].
		p printOn: aStream].
	aStream nextPutAll: '}'