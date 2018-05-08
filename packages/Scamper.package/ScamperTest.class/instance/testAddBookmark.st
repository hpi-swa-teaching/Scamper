initialize-release
testAddBookmark

	"|url|
	url := 'http://google.de'.
	scamper jumpToUrl: url.
	scamper addToBookmark.
	self assert: (scamper bookmark contains: [:each | each := url])."