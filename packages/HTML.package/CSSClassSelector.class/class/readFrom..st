instance creation
readFrom: in

	| out | 
	
	out := WriteStream on: String new.
	in peek = $. ifTrue: [in next].
	[in atEnd not and: [in peek isAlphaNumeric or:['-_' includes: in peek]]] 
		whileTrue: [out nextPut: in next].
	^self new value: out contents unquoted