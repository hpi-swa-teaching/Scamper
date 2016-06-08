menus
importBookmark
	| newDirectory importLinks filename file |
	newDirectory := FillInTheBlank request: 'Directory to import' translated initialAnswer: self bookDir pathName.
	(newDirectory isNil or: [ newDirectory isEmpty ]) ifTrue: [ ^self ].
	(FileDirectory new directoryExists: newDirectory)
		ifTrue:[importLinks := self makeBookmark: (FileDirectory on: newDirectory).
				importLinks isEmpty 
					ifFalse:[importLinks associationsDo:[:ass | bookmark add: ass.
							(ass value isKindOf: Dictionary)
								ifTrue:[self createBookmarkFiles: self bookDir dict: ass value dirname: ass key]
								ifFalse:[filename := ass key,'.lin'.
										self bookDir deleteFileNamed: filename.
										file := StandardFileStream fileNamed: (self bookDir fullNameFor: filename).
										file ifNil:[self error: 'could not save file' translated].
										file nextPutAll: ass value asString. 
										file close]
								]
							].
				]
		ifFalse:[self importBookmark].