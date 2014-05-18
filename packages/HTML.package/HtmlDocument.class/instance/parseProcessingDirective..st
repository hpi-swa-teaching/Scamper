parsing
parseProcessingDirective: aString

	| in |
	in := ReadStream on: aString.
	in upTo: $?.
	in skipSeparators.
	[Character separators includes: in peek] whileFalse: [in next].
	in skipSeparators.
	self parseAttributes: (in upTo: $?).	
