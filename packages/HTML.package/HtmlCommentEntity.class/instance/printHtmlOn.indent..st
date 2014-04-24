printing
printHtmlOn: aStream indent: indent 
	indent timesRepeat: [aStream space].
	aStream nextPutAll: '<!-- '.
	aStream nextPutAll: self commentText.
	aStream nextPutAll: ' -->'.
	aStream cr