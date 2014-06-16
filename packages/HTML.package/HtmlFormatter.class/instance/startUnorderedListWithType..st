formatting commands
startUnorderedListWithType: aListStyleType
	"begin an unordered list"
	listLengths add: 0.
	listStyleTypes add: aListStyleType.
	listTypes add: #unordered.
	indentLevel := indentLevel + 1.
	self setAttributes.
	