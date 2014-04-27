private-tokenizing
nextSpaces
	"read in as many consecutive space characters as possible"

	| start end |
	"short cut for a common case"
	self peekChar isSeparator
		ifFalse: [ ^ '' ].	"find the start and end of the sequence of spaces"
	start := pos.
	end := text
		indexOfAnyOf: CSNonSeparators
		startingAt: start
		ifAbsent: [ text size + 1 ].
	end := end - 1.	"update pos and return the sequence"
	pos := end + 1.
	^ text copyFrom: start to: end