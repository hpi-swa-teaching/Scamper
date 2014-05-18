as yet unclassified
readFrom: in

	| out |
	out := WriteStream on: String new.
	('-+' includes: in peek) ifTrue: [out nextPut: in next].
	[in atEnd not and: [in peek isDigit]] whileTrue: [out nextPut: in next].
	^self new valueString: out contents 