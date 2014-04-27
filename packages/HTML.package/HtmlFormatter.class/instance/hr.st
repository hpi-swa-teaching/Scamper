formatting commands
hr
	"add an (attempt at a) horizontal rule"
	self ensureNewlines: 1.
	25 timesRepeat: [ self addChar: $- ].
	self ensureNewlines: 1.
	precedingSpaces := 0.
	precedingNewlines := 1000.    "pretend it's the top of a new page"