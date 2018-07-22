document handling
displayTextHtmlPage: newSource
	"HTML page--format it"
	currentUrl := newSource url.
	
	pageSource := newSource content. 
	self status: 'parsing...' translated.
	document := (HtmlDocument new parseContents: (ReadStream on: pageSource)).
	document 
		requestUrl: currentUrl;
	 	responseUrl: currentUrl.
	self status: 'applying styles...' translated.
	document stylesheets do: [:stylesheet | 
		 [stylesheet loadStyles]].
	document applyStyles.
	self status: 'laying out...' translated.
	self webContentsPane show: document.

	self changeAll: 	#(currentUrl relabel).
	self status: 'done.' translated.
	^true