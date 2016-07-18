menus
optionsPanelButtonPaneWithPosition: aPosition

	| pane |
	
	pane := (AlignmentMorph new)
				borderWidth: 1;
				borderColor: (Color lightGray);
				layoutInset: 5;
				position: aPosition;
				listDirection: #topToBottom;
				color: (Color white);
				wrapCentering: #center;
				cellPositioning: #center;
				clipSubmorphs: true;
				width: self optionsPanelWidth;
				height: self optionsPanelHeight.
	
	pane
		addMorph: (self simpleIconicButtonNamed: 'Bookmarks' translated
						action:  #visitBookmarksPage  
						withIcon: ((ImageReadWriter formFromFileNamed:  
							(FileDirectory uri: self iconBookmark) fullName)));
		addMorph: (self simpleIconicButtonNamed: 'History' translated 
						action: #visitHistoryPage  
						withIcon: ((ImageReadWriter formFromFileNamed:  
							(FileDirectory uri: self iconHistory) fullName))).
				
	^ pane.
				
	
