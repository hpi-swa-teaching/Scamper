menus
menu: menu shifted: shifted 
	"added 'back' and 'forward' menu options: Aibek 4/18/99"
	| lines selections linePositions |
	lines := 'back
forward
new URL
history
view source
inspect parse tree
go to start page
edit start page
bookmark' translated.
	linePositions := #(2 4 6 ).
	selections := #(#back #forward #jumpToNewUrl #visitHistoryPage #viewSource #inspectParseTree #visitStartPage #editStartPage #visitBookmarksPage ).
	downloadingProcess
		ifNotNil: 
			[lines := lines , String cr , 'stop downloading' translated.
			linePositions := linePositions , selections size asOrderedCollection.
			selections := selections , #(#stopEverything )].
	menu
		labels: lines
		lines: linePositions
		selections: selections.
	^ menu