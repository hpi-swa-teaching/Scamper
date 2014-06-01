formatting commands
startOrderedListWithStart: aStartValue styleType: aStyleType
	"begin an ordered list"
	listLengths add: (aStartValue - 1).
	listStyleTypes add: (ListStyleFormatter fromStyleType: aStyleType).
	listTypes add: #ordered.
	indentLevel := indentLevel + 1.
	self setAttributes.
	