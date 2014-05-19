accessing
printOn: aStream

	aStream nextPut: $*.
	self selectors do: [:ea | ea printOn: aStream]