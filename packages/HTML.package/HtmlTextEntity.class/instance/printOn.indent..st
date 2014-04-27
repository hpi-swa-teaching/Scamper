printing
printOn: aStream indent: indent
	indent timesRepeat: [ aStream space ].
	aStream nextPutAll: '['.
	aStream nextPutAll: text.
	aStream nextPutAll: ']'.
	aStream cr.