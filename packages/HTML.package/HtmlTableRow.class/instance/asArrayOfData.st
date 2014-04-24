accessing
asArrayOfData
	"Return an Array of the table row, removing all html.  This is only the text and numbers that the user would see on a web page.  Remove all comments and formatting."

	| cc |
	cc := contents select: [:ent | ent isTableDataItem].
	^ cc collect: [:ent | ent asHtml asUnHtml withBlanksTrimmed]
		"for now, leave the numbers as strings.  User will know which to convert"