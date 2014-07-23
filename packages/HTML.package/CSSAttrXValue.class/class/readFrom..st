instance creation
readFrom: in

	|  pos |
	in skipSeparators.
	pos := in position.
	(in match: 'attr(') ifFalse: [in position: pos. ^nil].
	^self new valueString: (in upTo: $)) trimBoth
	
	