formatting
addToFormatter: formatter
	formatter ensureNewlines: 1.
	formatter increaseIndent.
	super addToFormatter: formatter.
	formatter decreaseIndent.