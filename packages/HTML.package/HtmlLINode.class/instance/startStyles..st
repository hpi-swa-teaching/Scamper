accessing
startStyles: aFormatter
	(self attributes includesKey: 'value')
		ifTrue: [aFormatter startListItemWithValue: (self attributes at: 'value')]
		ifFalse: [aFormatter startListItem].