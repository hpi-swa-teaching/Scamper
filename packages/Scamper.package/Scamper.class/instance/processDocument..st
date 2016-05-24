document handling
processDocument: aDocument
	aDocument == #stateDownloaded ifTrue: [ 
		"images and such have been downloaded; update the page"
		self status: 'reformatting page...' translated.
		self changeAll: #(backgroundColor formattedPage).
		self status: 'sittin' translated. ]
	ifFalse: [		
		self displayDocument: aDocument
	]