formatting
addToFormatter: formatter
	formatter startOrderedList.
	super addToFormatter: formatter.
	formatter endOrderedList.