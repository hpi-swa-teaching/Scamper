formatting
addToFormatter: formatter
	formatter startListItem.
	super addToFormatter: formatter.
	formatter endListItem.