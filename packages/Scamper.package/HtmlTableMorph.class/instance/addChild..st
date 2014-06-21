accessing
addChild: aHtmlTableRowMorph
	| count |
	self layoutPolicy rows addLast: (HtmlGridSpace new breadth: 10; min: 0; max: 9999).
	count := 0.
	aHtmlTableRowMorph children do: [ :ea | count := count + 1.
		self
			ensureColumns: count;
			ensureWidth: ea width + 5 ofColumn: count;
			ensureHeight: ea height ofRow: self layoutPolicy rows size; 
			addMorphBack: (ea
				hResizing: #spaceFill;
				setProperty: #gridPosition toValue: (HtmlGridPosition new column: count ; row: self layoutPolicy rows size) ).
		self children addLast: ea.
].