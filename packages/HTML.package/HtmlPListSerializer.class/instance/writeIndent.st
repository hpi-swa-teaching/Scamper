writing
writeIndent
	"write the indent"

	0 to: indentLevel do: [:x | stream nextPutAll: '    '] 