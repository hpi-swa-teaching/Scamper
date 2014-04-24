printing
printHtmlOn: aStream indent: indent 
	indent timesRepeat: [aStream space].
	aStream nextPutAll: text.
