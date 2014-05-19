actions
readEntity: aStream

	| s in out |

	out := WriteStream on: (String new: 100).

	s := (self stripCommentsFrom: (aStream upTo: $>)) trimBoth.

	in := ReadStream on: s.
	in upTo: $%.
	out nextPutAll: '% '.

	in skipSeparators.
	[in peek isSeparator]whileFalse:[out nextPut: in next].

	in skipSeparators.
	out nextPut: $ .
	out nextPutAll: in upToEnd.
	self addToEntities: out contents trimBoth.
	