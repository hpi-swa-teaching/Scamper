menus
optionsPanelButtonPane

	| pane |
	
	pane := (AlignmentMorph new)
				borderWidth: 0;
				layoutInset: 0;
				color: (Color blue);
				wrapCentering: #center;
				cellPositioning: #center;
				clipSubmorphs: true.
	
	pane
		addMorph: (self simpleIconicButtonNamed: 'Bookmarks' translated
						action:  #bookmarks 
						withIcon: ((ImageReadWriter formFromFileNamed:  
							(FileDirectory uri: self iconBookmark) fullName))).
				.

	^ pane.
				
	
