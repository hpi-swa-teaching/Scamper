menus
displayHistory
	"Let the user selecet a previous page to view."
	
	menuHistory := MenuMorph entitled: 'Recent URLs' translated.
	menuHistory defaultTarget: self;
				  addStayUpItem;
				  addLine.
	recentDocuments reverseDo:
		[:doc |
		menuHistory add: doc url asString selector: #displayDocument: argument: doc].
	menuHistory popUpInWorld: self currentWorld