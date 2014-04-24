document handling
displayTextHtmlPage: newSource
	"HTML page--format it"
	| formatter bgimageUrl bgimageDoc bgimage |
	currentUrl := newSource url.
	pageSource := newSource content.
	self status: 'parsing...' translated.
	document := (HtmlParser parse: (ReadStream on: pageSource)).
	self status: 'laying out...' translated.
	formatter := HtmlFormatter preferredFormatterClass new.
	formatter browser: self.
	formatter baseUrl: currentUrl.
	document addToFormatter: formatter.

	formattedPage := formatter text.
	(bgimageUrl := document body background)
		ifNotNil:
			[bgimageDoc := (bgimageUrl asUrlRelativeTo: currentUrl) retrieveContents.
			[bgimage := ImageReadWriter formFromStream: bgimageDoc contentStream binary]
				ifError: [:err :rcvr | "ignore" bgimage := nil]].
	bgimage
		ifNotNil: [backgroundColor := bgimage]
		ifNil: [backgroundColor := Color fromString: document body bgcolor].
	currentUrl asUrl fragment
		ifNil: [ currentAnchorLocation := nil ]
		ifNotNil: [ currentAnchorLocation :=
				formatter anchorLocations 
					at: currentUrl asUrl fragment asLowercase
					ifAbsent: [ nil ] ].

	self startDownloadingMorphState: (formatter incompleteMorphs).

	self changeAll: 	#(currentUrl relabel hasLint lint backgroundColor formattedPage formattedPageSelection).
	self status: 'done.' translated.
	^true