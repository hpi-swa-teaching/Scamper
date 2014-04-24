formatting
addToFormatter: formatter
	formatter startUnorderedList.
	super addToFormatter: formatter.
	formatter endUnorderedList.