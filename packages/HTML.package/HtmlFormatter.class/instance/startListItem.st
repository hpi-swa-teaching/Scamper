formatting commands
startListItem
	"begin a new list item"
	(listTypes isEmpty or: [listStyleTypes isEmpty]) ifTrue: [ ^self ].
	self ensureNewlines: 1.
	listStyleTypes last = 'none' ifTrue: [ ^self ].
	listTypes last = #unordered
		ifTrue: [ self addString: '¥ ' ]
		ifFalse: [ self addString: (listLengths last + 1) printString.
			self addString: '. ' ].
	listLengths at: (listLengths size) put: (listLengths last + 1).