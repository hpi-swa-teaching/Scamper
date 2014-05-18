testing
printOn: aStream

	self selectors do: [:ea | ea printOn: aStream. aStream nextPut: $ ]