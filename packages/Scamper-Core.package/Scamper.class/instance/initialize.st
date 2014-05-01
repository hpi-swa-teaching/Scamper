initialization
initialize
	documentQueue := SharedQueue new.
	recentDocuments := OrderedCollection new.
	bookmark := Dictionary new.
	self loadBookmark.
	currentUrlIndex := 0.
	currentUrl := ''.
	pageSource := ''.
	document := HtmlParser parse: (ReadStream on: '').
	self status: 'sittin' translated