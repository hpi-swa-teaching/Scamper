initialization
initialize
	self initializeMIMEDatabase.
	webClient := WebClient new.
	webClient userAgent: Scamper userAgent.
	documentQueue := SharedQueue new.
	recentDocuments := OrderedCollection new.
	bookmark := Dictionary new.
	self loadBookmark.
	currentUrlIndex := 0.
	currentUrl := ''.
	sessionCookies := OrderedCollection new.
	LongtimeCookies := OrderedCollection new.
	pageSource := ''.
	self status: 'sittin' translated