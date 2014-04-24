private-tokenizing
nextAttributeValue
	"return the next sequence of alphanumeric characters; used to read in the value part of a tag's attribute, ie <tagname  attribname=attribvalue>"
	"because of the plethora of sloppy web pages, this is EXTREMELY tolerant"
	| c start end |

	"make sure there are at least two characters left"
	pos >= text size ifTrue: [ ^self nextChar asString ].

	"okay, peek at the first character"
	start := pos.
	c := text at: start.

	"check whether it's either kind of quote mark"
	(c = $" or: [ c = $' ]) ifTrue: [
		"yes--so find the matching quote mark"
		end := text indexOf: c startingAt: start+1 ifAbsent: [ text size + 1 ].
		pos := end+1.
		^text copyFrom: start to: end ].


	"no--go until a space or a $> is seen"
	end := text indexOfAnyOf: CSAttributeEnders startingAt: start ifAbsent: [ text size + 1 ].
	end := end - 1.
	pos := end + 1.
	^text copyFrom: start to: end.