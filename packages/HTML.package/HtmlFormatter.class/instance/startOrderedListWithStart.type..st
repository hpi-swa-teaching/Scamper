formatting commands
startOrderedListWithStart: aStartValue type: aListStyleType
	"begin an ordered list"
	listLengths add: (aStartValue - 1).
	listStyleTypes add: aListStyleType.
	listTypes add: #ordered.
	indentLevel := indentLevel + 1.
	self setAttributes.
	