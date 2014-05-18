formatting commands
ensureSpaces: number
	"make sure there are at least number preceding spaces, unless we're at the beginning of a new line"

	precedingNewlines > 0 ifTrue: [ ^ self ].

	number > precedingSpaces ifTrue: [
		(number - precedingSpaces) timesRepeat: [ self addChar: Character space ] ].