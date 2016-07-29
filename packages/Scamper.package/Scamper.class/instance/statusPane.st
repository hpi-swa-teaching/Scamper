window definition
statusPane
	"Create and return the browser status pane."

	| pane |
	
	pane := (PluggableTextMorph on: self text: #status accept: nil)
			borderWidth: 0;
			color: (Color transparent).
	pane hideScrollBarsIndefinitely.
	
	^ pane.