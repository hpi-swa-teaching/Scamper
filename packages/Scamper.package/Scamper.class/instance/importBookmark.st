menus
importBookmark
	| newDirectory importLinks filename file |
	newDirectory := FillInTheBlank request: 'Directory to import' translated initialAnswer: bookDir pathName.
	(newDirectory isNil or: [ newDirectory isEmpty ]) ifTrue: [ ^self ].
	(FileDirectory new directoryExists: newDirectory)
		ifTrue:[importLinks := self makeBookmark: (FileDirectory on: newDirectory).
				importLinks isEmpty 
					ifFalse:[importLinks associationsDo:[:ass | self bookmarks add: ass.
							(ass value isKindOf: Dictionary)
								ifTrue:[self createBookmarkFiles: bookDir dict: ass value dirname: ass key]
								ifFalse:[filename := ass key,'.lin'.
										bookDir deleteFileNamed: filename.
										file := StandardFileStream fileNamed: (bookDir fullNameFor: filename).
										file ifNil:[self error: 'could not save file' translated].
										file nextPutAll: ass value asString. 
										file close]
								]
							].
				]
		ifFalse:[self importBookmark].