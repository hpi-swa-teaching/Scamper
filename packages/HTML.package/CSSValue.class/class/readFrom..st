as yet unclassified
readFrom: in

	| out seps |
	out := WriteStream on: String new.
	seps := (Character separators, ';,').
	in skipSeparators.
	[in atEnd or:[seps includes: in peek]] whileFalse: [out nextPut: in next].
	out contents trimBoth size < 1 ifTrue: [^nil].
	^self new valueString: out contents