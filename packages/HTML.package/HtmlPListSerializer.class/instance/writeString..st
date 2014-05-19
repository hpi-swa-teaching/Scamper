writing
writeString: aString
	"write a string to the stream - quoting and escaping if necessary"

	(aString detect: [:c | ((c isAlphaNumeric) | ('_-.' includes: c)) not] ifNone: [ nil ])
	ifNil: [ stream nextPutAll: aString ]
	ifNotNil: [ stream nextPut: $". 
		aString do: [:c | stream nextPutAll: (WriteTranslations at: c ifAbsent: [ c asString] )]. stream nextPutAll: '" ']