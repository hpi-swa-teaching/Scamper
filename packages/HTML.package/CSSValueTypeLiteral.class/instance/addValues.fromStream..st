testing
addValues: aCollection fromStream: in

	| pos s out |

	pos := in position.
	in skipSeparators.
	out := WriteStream on: String new.
	[in atEnd not and: [literal includes: in peek]] 
		whileTrue: [out nextPut: in next].
	s := out contents.
	^(s asLowercase = literal) 
		ifFalse: [in position: pos. false] 
		ifTrue: [aCollection add: (CSSIdentifierValue new valueString: self literal). true]