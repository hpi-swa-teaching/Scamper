accessing
asArrayOfData
	"Return an Array2D of the table, removing all html.  This in only the text and numbers that the user would see on a web page.  Remove all comments and formatting.  Width is the widest row, and others are padded with empty strings."

	| cc array2D widths |
	cc := contents select: [:ent | ent isTableRow].
	widths := cc contents collect: [:row | 
		row contents count: [:ent | ent isTableDataItem]].
	array2D := Array2D width: (widths max) height: cc size.
	cc withIndexDo: [:row :rowNum |
		array2D atRow: rowNum put: 
			(row asArrayOfData padded: #right to: array2D width with: '')].
	^ array2D