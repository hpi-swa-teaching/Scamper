accessing
printOn: aStream

	aStream nextPutAll: self element.
	self selectors do:[:ea | ea printOn: aStream]