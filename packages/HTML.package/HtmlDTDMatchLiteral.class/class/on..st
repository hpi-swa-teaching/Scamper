as yet unclassified
on: aStringOrStream

	| in out delims s |

	in := aStringOrStream isStream 
		ifFalse: [ReadStream on: aStringOrStream]
		ifTrue:[aStringOrStream].

	delims := ' ()|*?+-,&'.
	out := WriteStream on: String new.

	in skipSeparators.
	[in atEnd or: [delims includes: in peek]] whileFalse: [out nextPut: in next].
	s := out contents.
	^s = 'EMPTY' 
		ifTrue: [HtmlDTDMatchEmpty empty]	
		ifFalse: 
		[
			(s asUppercase findString: 'CDATA') > 0 
			ifTrue:[HtmlDTDMatchCDATA cdata]
			ifFalse:[HtmlDTDMatchLiteral new expression: s]
		]