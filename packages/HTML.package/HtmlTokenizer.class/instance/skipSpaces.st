private-tokenizing
skipSpaces
	"skip as many consecutive space characters as possible"
	pos := text indexOfAnyOf: CSNonSeparators startingAt: pos ifAbsent: [ text size + 1 ].