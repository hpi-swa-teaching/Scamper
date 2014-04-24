testing
lint: aStream
	form
		ifNil:
			[ aStream
				nextPutAll: '<' , self tagName;
				nextPutAll: '> not within a form'.
			aStream cr ].
	super lint: aStream