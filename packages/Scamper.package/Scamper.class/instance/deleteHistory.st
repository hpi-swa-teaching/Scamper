menus
deleteHistory
	"Let the user select a previous page to view."

	recentDocuments := nil.
	self jumpToAbsoluteUrlAsync: 'browser:history'.
	