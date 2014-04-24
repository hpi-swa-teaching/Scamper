menus
createBookmarkFiles: aDirectory dict: aDictionary dirname: aName
	| dir file filename |
	(aDirectory directoryExists: aName) ifFalse:[aDirectory createDirectory: aName]. 
	dir := aDirectory directoryNamed: aName.
	aDictionary keysAndValuesDo:[:k :v |
				(v isKindOf: Dictionary)
					ifTrue:[self createBookmarkFiles: dir dict: v dirname: k]
					ifFalse:[filename := k, '.lin'.
							dir deleteFileNamed: filename.
							file := StandardFileStream fileNamed: (dir fullNameFor: filename).
							file ifNil:[self error: 'could not save file' translated].
							file nextPutAll: v asString.
							file close]
				].