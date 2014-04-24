document handling
updateRecentDocuments
	"delete all elements in recentDocuments after currentUrlIndex"
	[recentDocuments size > currentUrlIndex] whileTrue: 
		[recentDocuments removeLast]
