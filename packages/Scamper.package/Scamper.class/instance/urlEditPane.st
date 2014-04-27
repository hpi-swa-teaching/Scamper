window definition
urlEditPane
	"Create and return the URL edit pane."

	| pane |
	pane := (PluggableTextMorph on: self text: #currentUrl accept: #jumpToAbsoluteUrl:).
		pane acceptOnCR: true.
pane hideScrollBarsIndefinitely.
^pane 
		