window definition
morphicWindow
	"Create and return a Morphic window for Scamper."
	|window|
	
	window:= (SystemWindow labelled: 'Scamper')
		model: self;
		setProperty: #webBrowserView toValue: true;
		addMorph: self urlEditPane frame: (0@0.01 extent: 1@0.07);		"URL edit pane and buttons"
		addMorph: self tabPane frame: (0@0.12 extent: 1@ 0.08);
		addMorph: self webContentsPane frame: (0@0.21 extent: 1@0.81);	"The web page pane"
		addMorph: self statusPane frame: (0@0.93 extent: 1.0@0.06).		"Status pane"
	
	self initializeTabs.
	
	^ window
		
	

