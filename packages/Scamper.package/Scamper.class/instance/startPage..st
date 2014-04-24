start page
startPage: newPage
	"fill in the contents of the user's personal start page"

	| file |
	FileDirectory default deleteFileNamed: 'StartPage.html'.
	[file := FileStream fileNamed: 'StartPage.html'.
	file ifNil: [self error: 'could not save file' translated].
	file nextPutAll: newPage asString.
	] ensure: [file close].
	self changed: #startPage.
	^true