accessing
printOn: aStream

	aStream nextPutAll: 'Closing tag: '.
	self tag printOn: aStream.
	aStream nextPutAll: ' with no start found'