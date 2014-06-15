formatting commands
startListItem
	"begin a new list item"
	(listTypes isEmpty or: [listStyleTypes isEmpty]) ifTrue: [ ^self ].
	self ensureNewlines: 1.
	listStyleTypes last = 'none' ifTrue: [ ^self ].
	listTypes last = #unordered
		ifTrue: [| bulletPoint|
				bulletPoint := RectangleMorph new.
				bulletPoint
					extent: 8@8;
					color: Color black;
					borderColor: Color transparent;
					borderWidth: 2.
				self addMorph: bulletPoint.]
		ifFalse: [ self addString: (listLengths last + 1) printString.
			self addString: '. ' ].
	listLengths at: (listLengths size) put: (listLengths last + 1).