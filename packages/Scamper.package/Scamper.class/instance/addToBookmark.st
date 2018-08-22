menus
addToBookmark
	| key value file filename |
	key := self titleOf: document.
	value := self currentUrl.
	filename := key,'.lin'.
	bookDir deleteFileNamed: filename. 
	file := StandardFileStream fileNamed: (bookDir fullNameFor: filename).
	file ifNil:[self error: 'could not save file' translated].
	file nextPutAll: value asString. 
	file close.
	self bookmarks add: (Association key: key value: value).
	