formatting
addToFormatter: formatter
	formatter ensureNewlines: 1.
	formatter increasePreformatted.
	super addToFormatter: formatter.
	formatter decreasePreformatted.
	formatter ensureNewlines: 1.