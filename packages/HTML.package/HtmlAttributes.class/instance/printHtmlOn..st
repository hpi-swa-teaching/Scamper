printing
printHtmlOn: aStream
	self associationsDo: 
		[:element | 
		aStream 
			space;
			nextPutAll: element key asUppercase.
		element value ifNotNil: [  
				aStream nextPut: $=.
				aStream print: element value withoutQuoting]. ]