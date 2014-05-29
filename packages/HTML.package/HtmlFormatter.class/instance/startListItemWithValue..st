formatting commands
startListItemWithValue: aValue
	listLengths at: (listLengths size) put: (aValue - 1).
	self startListItem.