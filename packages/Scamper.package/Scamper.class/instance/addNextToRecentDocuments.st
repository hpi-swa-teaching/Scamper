document handling
addNextToRecentDocuments
	
	self recentDocuments ifNil: [self recentDocuments: OrderedCollection new].
	self updateRecentDocuments.
	currentUrlIndex := currentUrlIndex + 1
