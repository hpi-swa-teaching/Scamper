window definition
morphicWindow
	"Create and return a Morphic window for Scamper."

	^(SystemWindow labelled: 'Scamper')
		model: self;
		setProperty: #webBrowserView toValue: true;
		addMorph: self buttonRowPane frame: (0@0 extent: 1@0.07);		"Navigation buttons"
		addMorph: self urlEditPane frame: (0@0.07 extent: 1@0.06);		"URL edit pane"
		addMorph: self webContentsPane frame: (0@0.13 extent: 1@0.81);	"The web page pane"
		addMorph: self statusPane frame: (0@0.94 extent: 1.0@0.06).		"Status pane"