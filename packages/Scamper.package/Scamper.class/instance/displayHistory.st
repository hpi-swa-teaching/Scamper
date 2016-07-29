menus
displayHistory
	"Let the user select a previous page to view."

	| menu |
	menu := MenuMorph entitled: 'Recent URLs' translated.
	menu defaultTarget: self.
	menu addStayUpItem.
	menu addLine.
	recentDocuments reverseDo:
		[:doc |
		menu add: doc url asString selector: #displayDocument: argument: doc].
	menu popUpInWorld: self currentWorld