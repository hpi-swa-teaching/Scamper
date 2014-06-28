layout
ensureColumns: columnCount
	(columnCount - self layoutPolicy columns size) timesRepeat: [ | aGridSpace |
		aGridSpace := HtmlGridSpace new
			breadth: 10;
			min: 0;
			max: 9999.
		self layoutPolicy columns addLast: aGridSpace.]