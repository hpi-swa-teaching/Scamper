user interface
loadBookmark
	| directory favorite |
	favorite := 'Bookmark'.
	directory := FileDirectory default.
	(directory directoryExists: favorite)
			ifTrue:[self bookDir: (directory directoryNamed: favorite).
					self bookmark: (self makeBookmark: self bookDir)]
			ifFalse:[directory createDirectory: favorite.
					self bookDir: (directory directoryNamed: favorite).
					self bookmark: Dictionary new ].
	