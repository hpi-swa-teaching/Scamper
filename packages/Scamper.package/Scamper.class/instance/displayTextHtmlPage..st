document handling
displayTextHtmlPage: newSource
	"HTML page--format it"
	| formatter |
	currentUrl := newSource url.
	pageSource := newSource content.
	self status: 'parsing...' translated.
	document := (HtmlDocument new parseContents: (ReadStream on: pageSource)).
	document 
		requestUrl: currentUrl;
	 	responseUrl: currentUrl.
	self status: 'laying out...' translated.
	document stylesheets do: [:stylesheet | stylesheet loadStyles].
	document applyStyles.
	formatter := HtmlFormatter preferredFormatterClass new.
	formatter browser: self.
	formatter baseUrl: currentUrl.
	document addToFormatter: formatter.

	formattedPage := formatter text.
	
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