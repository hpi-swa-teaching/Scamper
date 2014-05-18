as yet unclassified
readFrom: in

	| out |
	out := WriteStream on: String new.
	in skipSeparators.
	('-+' includes: in peek) ifTrue: [out nextPut: in next].
	[in atEnd not and: [in peek isDigit]] whileTrue: [out nextPut: in next].
	(in peek = $.) ifTrue: 
	[
		out size = 0 ifTrue: [out nextPut: $0].
		out nextPut: in next.
		[in atEnd not and: [in peek isDigit]] whileTrue: [out nextPut: in next].
	].
	[in atEnd or: [in peek isSeparator or:[';/,' includes: in peek]]] 
		whileFalse: [out nextPut: in next].
	^out contents size > 0 ifTrue: [self new valueString: out contents] ifFalse: [nil]