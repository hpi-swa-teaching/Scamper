formatting commands
ensureNewlines: number
	"make sure there are at least number preceding newlines"
	number > precedingNewlines ifTrue: [
		(number - precedingNewlines) timesRepeat: [ self addChar: Character cr ] ].