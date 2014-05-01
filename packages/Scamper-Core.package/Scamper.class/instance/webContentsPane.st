window definition
webContentsPane
	"Create and return the web page pane."

	^WebPageMorph
		on: self 
		bg: #backgroundColor 
		text: #formattedPage 
		readSelection: #formattedPageSelection 
		menu: #menu:shifted: