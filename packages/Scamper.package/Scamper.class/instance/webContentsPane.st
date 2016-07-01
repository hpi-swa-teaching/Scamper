window definition
webContentsPane
	"Return the web page pane."

	^ webPageMorph ifNil: [webPageMorph := WebPageMorph on: self.]