menus
deleteHistory
	"Let the user select a previous page to view."

	self recentDocuments: nil.
	self recentDocuments: OrderedCollection new.
	^self historyHTML
