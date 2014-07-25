instance creation
readFrom: in

	| out |
	out := WriteStream on: String new.
	(in atEnd not and: [in peek isLetter]) ifTrue: 
	[
		out nextPut: in next.
		[in atEnd not and: [in peek isLetter or: [in peek isDigit or:['-_' includes: in peek]]]] 
			whileTrue:[out nextPut: in next].
	]
	ifFalse: [self halt].
	^self new element: out contents; readAttributeSelectorsFrom: in