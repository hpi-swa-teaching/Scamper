formatting
addToFormatter: formatter
	formatter startHeader: level.
	super addToFormatter: formatter.
	formatter endHeader: level