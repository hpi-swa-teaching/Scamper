formatting commands
startUnorderedList
	"begin an unordered list"
	listLengths add: 0.
	listTypes add: #unordered.
	indentLevel := indentLevel + 1.
	self setAttributes.
	