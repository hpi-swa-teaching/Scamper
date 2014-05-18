as yet unclassified
printOn: aStream

	aStream nextPutAll: 'Value of: '.
	self attribute printOn: aStream.
	aStream nextPutAll: ' in '.
	self parent prefix printOn: aStream.
	aStream nextPutAll: ' should be quoted.'.