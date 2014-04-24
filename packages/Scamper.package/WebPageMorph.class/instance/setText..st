model access
setText: aText
	super setText:aText.
	textMorph wrapFlag: true.
