window definition
buttonRowPane
	"Create and return a pane of navigation buttons."

	| buttonRow |
	buttonRow := (AlignmentMorph new)
				borderWidth: 0;
				layoutInset: 0;
				color:(Color r: 1 g:1 b:1);
				hResizing: #spaceFill;
				wrapCentering: #center;
				cellPositioning: #leftCenter;
				clipSubmorphs: true;
				addTransparentSpacerOfSize: 5 @ 0.
	buttonRow
		addMorphBack: (self 
					simpleIconicButtonNamed: 'Back'  
					action: #back
					withIcon: MenuIcons smallUndoIcon);
		addTransparentSpacerOfSize: 5 @ 0;
		addMorphBack: (self 
					simpleIconicButtonNamed: 'Forward' 
					action: #forward
					withIcon: MenuIcons smallRedoIcon);
		addTransparentSpacerOfSize: 5 @ 0;
		addMorphBack: (self 
					simpleButtonNamed: 'History' translated
					action: #displayHistory
					text: self historyButtonText);
addTransparentSpacerOfSize: 5 @ 0;
		addMorphBack: (self 
					simpleButtonNamed: 'Bookmark' translated
					action: #bookmark
					text: self bookmarkButtonText);
		addTransparentSpacerOfSize: 5 @ 0;
		addMorphBack: (self 
					simpleIconicButtonNamed: 'Reload' 
					action: #reload
					withIcon: MenuIcons smallDocumentClockIcon);
		addTransparentSpacerOfSize: 5 @ 0;
		addMorphBack: (self 
					simpleIconicButtonNamed: 'Home'
					action: #visitStartPage
					withIcon: MenuIcons smallHomeIcon);
		addTransparentSpacerOfSize: 5 @ 0;
		addMorphBack: (self 
					simpleIconicButtonNamed: 'Stop'
					action: #stopEverything
					withIcon: MenuIcons smallCancelIcon);
		addTransparentSpacerOfSize: 5 @ 0;
		addMorphBack: (self 
					simpleButtonNamed: 'Tabs' translated
					action: #showTabs
					text: self openNewTabText).
	^buttonRow
