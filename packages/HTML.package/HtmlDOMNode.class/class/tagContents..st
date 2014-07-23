instance creation
tagContents: aTag 

	| node className cls tag in out trimmedTag endsWithSlash |

	trimmedTag := aTag trimBoth.
	node := nil.
	in := ReadStream on: aTag.
	out := WriteStream on: (String new:20).

	in skipSeparators.
	[in atEnd not and: [in peek isAlphaNumeric]] whileTrue: [out nextPut: in next].

	tag := out contents.

	className := ('Html',tag asUppercase,'Node') asSymbol.

	cls := Smalltalk at: className ifAbsent: [HtmlDOMNode].

	endsWithSlash := (trimmedTag last = $/) ifTrue:
	[
		(trimmedTag detect:[:ea | ea isSeparator] ifNone: [nil]) isNil or:
			[(trimmedTag at: ((trimmedTag size -1))) isSeparator]
	]
	ifFalse: [false ].

	node := cls new tag: tag;
			hasTrailingSlash: endsWithSlash; 
			parseAttributes: (trimmedTag last: (trimmedTag size - tag size)).

	tag asLowercase = tag ifFalse: 
	[
		node addError: (HtmlTagNotLowerCaseError new tag: tag).
	].

	^node.	
