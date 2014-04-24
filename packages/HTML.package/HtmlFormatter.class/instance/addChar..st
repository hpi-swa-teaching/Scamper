formatting commands
addChar: c
	"add a single character, updating all the tallies"

	"add the character to the output"
	outputStream nextPut: c.

	"update counters for preceeding spaces and preceding newlines"
	(c = Character space or: [ c = Character tab ]) 
	ifTrue: [ precedingSpaces := precedingSpaces+1.  precedingNewlines := 0 ]
	ifFalse: [
		(c = Character cr) ifTrue: [
			precedingSpaces := 0.
			precedingNewlines := precedingNewlines + 1 ]
		ifFalse: [
			precedingSpaces := precedingNewlines := 0 ] ].