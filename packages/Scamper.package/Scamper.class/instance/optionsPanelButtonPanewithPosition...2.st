menus
optionsPanelButtonPanewithPosition: aPosition

	| pane |
	
	pane := (AlignmentMorph new)
				borderWidth: 1;
				borderColor: (Color lightGray);
				layoutInset: 5;
				listDirection: #topToBottom;
				position: aPosition;
				color: (Color white);
				wrapCentering: #center;
				cellPositioning: #center;
				clipSubmorphs: true;
				width: self optionsPanelWidth;
				height: 120.
				
	
	pane
		addMorph: (self simpleIconicButtonNamed: 'Bookmarks' translated
						action:  #bookmarks 
						withIcon: ((ImageReadWriter formFromFileNamed:  
							(FileDirectory uri: self iconBookmark) fullName)));

		addMorph: (self simpleIconicButtonNamed: 'History' translated
						action:  #visitHistoryPage 
						withIcon: ((ImageReadWriter formFromFileNamed:  
							(FileDirectory uri: self iconHistory) fullName))).
				.

	^ pane.
				
	
