accessing
next: anInteger putAll: aString startingAt: startIndex

	"add an entire string with the same attributes"
	anInteger > 0 ifFalse: [ ^aString ].
	currentRun := currentRun + anInteger.
	^characters 
		next: anInteger
		putAll: aString
		startingAt: startIndex