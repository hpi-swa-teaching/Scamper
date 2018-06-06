accessing
printOn: aStream

	
	aStream nextPutAll: self prefix; nextPutAll: self innerContents; nextPutAll: self suffix.
	