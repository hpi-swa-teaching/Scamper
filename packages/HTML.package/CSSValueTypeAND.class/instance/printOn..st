printing
printOn: aStream

	aStream nextPut: $[.
	self types do: [:ea | ea printOn: aStream.  ea == types last ifFalse: [ aStream nextPutAll: ' ']].
	aStream nextPut: $]