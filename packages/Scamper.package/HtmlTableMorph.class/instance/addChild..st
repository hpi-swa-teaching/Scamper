as yet unclassified
addChild: aHtmlTableRowMorph
	| count |
	self layoutPolicy rows addLast: (HtmlGridSpace new breadth: 10; min: 0; max: 9999).
	count := 0.
	aHtmlTableRowMorph children do: [ :ea | count := count + 1.
	((self layoutPolicy columns at: count) min < ea width) ifTrue:
		[(self layoutPolicy columns at: count)
			min: ea width;
			breadth: ea width].
		self addMorphBack: (ea
			hResizing: #spaceFill;
			setProperty: #gridPosition 
				toValue: (HtmlGridPosition new column: count ; row: self layoutPolicy rows size) ).
		self children addLast: ea.
].