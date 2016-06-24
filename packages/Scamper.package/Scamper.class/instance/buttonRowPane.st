window definition
buttonRowPane
	"Create and return a pane of navigation buttons."

	| buttonRow |
	
	
	buttonRow := (AlignmentMorph new)
				borderWidth: 0;
				layoutInset: 0;
				color:(Color transparent );
				hResizing: #spaceFill;
				wrapCentering: #center;
				cellPositioning: #leftCenter;
				clipSubmorphs: true;
				addTransparentSpacerOfSize: 5 @ 0.
	buttonRow
		addMorphBack: (self 
					simpleIconicButtonNamed: 'Back'  translated
					action: #back
					withIcon: ((ImageReadWriter formFromFileNamed:  (FileDirectory uri: self iconBackward) fullName)));
		addTransparentSpacerOfSize: 5 @ 0;
		addMorphBack: (self 
					simpleIconicButtonNamed: 'Forward' translated
					action: #forward
					withIcon:  ((ImageReadWriter formFromFileNamed:  (FileDirectory uri: self iconForward) fullName)));
		addTransparentSpacerOfSize: 5 @ 0;
		addMorphBack: (self 
					simpleButtonNamed: 'History' translated
					action: #displayHistory
					text: self historyButtonText);
addTransparentSpacerOfSize: 5 @ 0;
		addMorphBack: (self 
					simpleIconicButtonNamed: 'Bookmark' translated
					action: #bookmark
					withIcon: ((ImageReadWriter formFromFileNamed:  (FileDirectory uri: self iconBookmark) fullName)));
		addTransparentSpacerOfSize: 5 @ 0;
		addMorphBack: (self 
					simpleIconicButtonNamed: 'Reload' translated
					action: #reload
					withIcon:  ((ImageReadWriter formFromFileNamed:  (FileDirectory uri: self iconRefresh) fullName)));
		addTransparentSpacerOfSize: 5 @ 0;
		addMorphBack: (self 
					simpleIconicButtonNamed: 'Home' translated
					action: #visitStartPage
					withIcon:  ((ImageReadWriter formFromFileNamed:  (FileDirectory uri: self iconHome) fullName)));
		addTransparentSpacerOfSize: 5 @ 0;
		addMorphBack: (self 
					simpleIconicButtonNamed: 'Stop' translated
					action: #stopEverything
					withIcon:  ((ImageReadWriter formFromFileNamed:  (FileDirectory uri: self iconCancel) fullName)));
		addTransparentSpacerOfSize: 5 @ 0;
		addMorphBack: (self 
					simpleIconicButtonNamed: 'Tabs' translated
					action: #showTabs
					withIcon: ((ImageReadWriter formFromFileNamed:  (FileDirectory uri: self iconTabs) fullName))).
	
	^ buttonRow.
