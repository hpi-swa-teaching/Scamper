window definition
debugPane
	"Create and return the browser debug window."

	| pane |
	pane := Transcript open.
	
	^pane