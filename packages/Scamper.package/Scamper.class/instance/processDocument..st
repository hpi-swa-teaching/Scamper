document handling
processDocument: aDocument
	aDocument == #stateDownloaded ifTrue: [ 
		"images and such have been downloaded; update the page"
		self status: 'reformatting page...' translated.
		formattedPage := document formattedTextForBrowser: self defaultBaseUrl: currentUrl.
		backgroundColor := Color fromString: document body bgcolor.
		self changeAll: #(backgroundColor formattedPage).
		self status: 'sittin' translated. ]
	ifFalse: [		
		self displayDocument: aDocument
	]