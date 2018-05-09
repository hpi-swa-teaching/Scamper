user interface
loadBookmark
	| directory favorite |
	favorite := 'Bookmark'.
	directory := FileDirectory uri: 'Scamper'.
	"directory := FileDirectory default."
	(directory directoryExists: favorite)
			ifTrue:[bookDir := directory directoryNamed: favorite.
					self bookmarks: (self makeBookmark: bookDir)
					]
			ifFalse:[directory createDirectory: favorite.
					bookDir := directory directoryNamed: favorite.
					self bookmarks: Dictionary new ].
	