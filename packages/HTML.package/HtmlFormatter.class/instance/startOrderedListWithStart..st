formatting commands
startOrderedListWithStart: aStartValue
	"begin an ordered list"
	listLengths add: (aStartValue - 1).
	listTypes add: #ordered.
	indentLevel := indentLevel + 1.
	self setAttributes.
	