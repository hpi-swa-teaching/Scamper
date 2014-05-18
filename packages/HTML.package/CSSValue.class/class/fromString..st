as yet unclassified
fromString: aString
	
	^self readFrom: (ReadStream on: aString)
