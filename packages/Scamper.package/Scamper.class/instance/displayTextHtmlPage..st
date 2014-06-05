document handling
displayTextHtmlPage: newSource
	"HTML page--format it"
	| utf8mode |
	currentUrl := newSource url.
	utf8mode := UTF8TextConverter strictUtf8Conversions.
	UTF8TextConverter strictUtf8Conversions: false.
	pageSource := newSource content utf8ToSqueak.
	UTF8TextConverter strictUtf8Conversions: utf8mode.
	self status: 'parsing...' translated.
	document := (HtmlDocument new parseContents: (ReadStream on: pageSource)).
	document 
		requestUrl: currentUrl;
	 	responseUrl: currentUrl.
	self status: 'applying styles...' translated.
	document stylesheets do: [:stylesheet | stylesheet loadStyles].
	document applyStyles.
	self status: 'laying out...' translated.
	self webContentsPane show: document.

	self changeAll: 	#(currentUrl relabel).
	self status: 'done.' translated.
	^true