formatting commands
startListItem
	"begin a new list item"
	listTypes size = 0 ifTrue: [ ^self ].
	self ensureNewlines: 1.
	listTypes last = #unordered
		ifTrue: [ self addString: '¥ ' ]
		ifFalse: [ self addString: (listLengths last + 1) printString.
			self addString: '. ' ].
	listLengths at: (listLengths size) put: (listLengths last + 1).