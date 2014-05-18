accessing
addToFormatter: formatter
	super addToFormatter: formatter.
	formatter ensureNewlines: 1.