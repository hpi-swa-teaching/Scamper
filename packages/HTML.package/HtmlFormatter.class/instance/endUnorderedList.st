formatting commands
endUnorderedList
	"end an unordered list"
	listLengths removeLast.
	listStyleTypes removeLast.
	listTypes removeLast.
	indentLevel := indentLevel - 1.
	self setAttributes. 
	
	self ensureNewlines: 1.