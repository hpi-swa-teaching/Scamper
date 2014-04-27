private-tokenizing
nextName
	"return the next sequence of alphanumeric characters"
	"because of the plethora of sloppy web pages, this also accepts most non-space characters"
	| start end |

	start := pos.
	end := text indexOfAnyOf: CSNameEnders startingAt: start ifAbsent: [ text size + 1].
	end := end - 1.


	pos := end+1.
	^text copyFrom: start to: end