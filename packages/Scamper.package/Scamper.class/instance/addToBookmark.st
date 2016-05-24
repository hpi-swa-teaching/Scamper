menus
addToBookmark
	| key value file filename |
	key := (self getTitle: document) ifNil: ['Untitled' translated].
	value := self currentUrl.
	filename := key,'.lin'.
	bookDir deleteFileNamed: filename. 
	file := StandardFileStream fileNamed: (bookDir fullNameFor: filename).
	file ifNil:[self error: 'could not save file' translated].
	file nextPutAll: value asString. 
	file close.
	bookmark add: (Association key: key value: value).
	