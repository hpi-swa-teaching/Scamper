initialization
initialize
	documentQueue := SharedQueue new.
	recentDocuments := OrderedCollection new.
	bookmark := Dictionary new.
	self loadBookmark.
	currentUrlIndex := 0.
	currentUrl := ''.
	pageSource := ''.
	self status: 'sittin' translated