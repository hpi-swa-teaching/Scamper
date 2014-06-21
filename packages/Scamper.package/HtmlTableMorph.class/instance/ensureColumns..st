as yet unclassified
ensureColumns: columnCount
	(columnCount - self layoutPolicy columns size) timesRepeat: 
	 	[self layoutPolicy columns addLast: (HtmlGridSpace new breadth: 10; min: 0; max: 9999).]