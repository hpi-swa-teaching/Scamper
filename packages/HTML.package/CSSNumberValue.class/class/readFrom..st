instance creation
readFrom: in

	| out |
	out := WriteStream on: String new.
	('-+' includes: in peek) ifTrue: [out nextPut: in next].
	[in atEnd not and: [in peek isDigit]] whileTrue: [out nextPut: in next].
	(in peek = $.) ifTrue: 
	[
		out size = 0 ifTrue: [out nextPut: $0].
		out nextPut: in next.
		[in atEnd not and: [in peek isDigit]] whileTrue: [out nextPut: in next].
	].
	^(in peek isNil or: [(Character separators, ';, /') includes: in peek]) 
		ifFalse: [nil]
		ifTrue:[self new valueString: out contents] 