testing
printOn: aStream

	self selectors do: [:ea | ea printOn: aStream. self selectors last == ea ifFalse: [aStream nextPutAll: ', ']]