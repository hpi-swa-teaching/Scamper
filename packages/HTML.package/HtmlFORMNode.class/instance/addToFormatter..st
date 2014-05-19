as yet unclassified
addToFormatter: formatter
	formatter startForm: self.
	super addToFormatter: formatter.
	formatter currentFormData reset.
	formatter endForm.