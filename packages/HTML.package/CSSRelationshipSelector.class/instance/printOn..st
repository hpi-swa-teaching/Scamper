accessing
printOn: aStream

	selectors do:
	[:ea | 
		ea printOn: aStream. 
		ea == selectors last 
			ifFalse: [aStream nextPutAll: self operator]
	]