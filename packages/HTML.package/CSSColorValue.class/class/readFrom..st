instance creation
readFrom: in

	| out |
	out := WriteStream on: String new.
	in skipSeparators.
	(in peek = $#) ifFalse: 
	[
		[in atEnd not and: [in peek isLetter]] whileTrue: [out nextPut: in next]
	]
	ifTrue: 
	[
		out nextPut: in next.
		[in atEnd not and: [in peek isAlphaNumeric]] whileTrue: [out nextPut: in next]
	].
	^self new valueString: out contents