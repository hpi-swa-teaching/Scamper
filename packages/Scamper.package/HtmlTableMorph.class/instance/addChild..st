as yet unclassified
addChild: aHtmlTableRowMorph
	| count |
	self layoutPolicy rows addLast: (HtmlGridRow new height: 10; min: 0; max: 9999).
	count := 0.
	aHtmlTableRowMorph children do: [ :ea | count := count + 1.
	((self layoutPolicy cols at: count) min < ea width) ifTrue:
		[(self layoutPolicy cols at: count)
			min: ea width;
			width: ea width].
		self addMorphBack: (ea
			hResizing: #spaceFill;
			setProperty: #gridPosition 
				toValue: (HtmlGridPosition new col: count ; row: self layoutPolicy rows size) ).
		self children addLast: ea.
].