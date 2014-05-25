user interface
loadBookmark
	| directory favorite |
	favorite := 'Bookmark'.
	directory := FileDirectory default.
	(directory directoryExists: favorite)
			ifTrue:[bookDir := directory directoryNamed: favorite.
					self bookmark: (self makeBookmark: bookDir)
					]
			ifFalse:[directory createDirectory: favorite.
					bookDir := directory directoryNamed: favorite.
					self bookmark: Dictionary new ].
	