window definition
statusPane
	"Create and return the browser status pane."

	| pane |
	pane := PluggableTextMorph on: self text: #status accept: nil.
pane  hideScrollBarsIndefinitely.
^pane