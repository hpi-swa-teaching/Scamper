accessing
removeLastSelector

	| last |
	last := selectors last.
	self selectors: (selectors first: (selectors size-1)).
	^last