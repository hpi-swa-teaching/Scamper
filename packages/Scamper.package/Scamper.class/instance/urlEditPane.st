window definition
urlEditPane
	"Create and return the URL edit pane."

	| pane paneUI paneURL |
	pane := (AlignmentMorph new)
				hResizing: #spaceFill;
				color: (Color r:1 g:1 b:1).
				
	
	paneURL := (PluggableTextMorph on: self text: #currentUrl accept: #jumpToAbsoluteUrlAsync:)
				height: 10;
				vResizing: #rigid.
				"hResizing: #spaceFill;
				spaceFillWeight: 1;"
				
	paneUI := (AlignmentMorph new)
				borderWidth: 0;
				layoutInset: 0;
				position: 1 @ 1;
				color: (Color r:0.1 g:1 b:1);
				addTransparentSpacerOfSize: 5 @ 0.
				
	refreshAndCancelButton := IconicButton on: self text: #status  accept: nil. 
		
	pane 	
		addMorph: paneURL fullFrame: ( LayoutFrame 
					fractions: (0@0 corner: 1@1)
					offsets: (60@0 corner: 0@0));
		addTransparentSpacerOfSize: 5 @ 0;
		addMorph: (self 
					simpleIconicButtonNamed: 'Forward' translated 
					action: #forward
					withIcon:  ((ImageReadWriter formFromFileNamed:  (FileDirectory uri: self iconForward) fullName)));
		addTransparentSpacerOfSize: 5 @ 0;
		addMorph: (self 
					simpleIconicButtonNamed: 'Home' translated
					action: #visitStartPage
					withIcon:  ((ImageReadWriter formFromFileNamed:  (FileDirectory uri: self iconHome) fullName)));
		addTransparentSpacerOfSize: 5 @ 0;
		addMorph: (self 
					simpleIconicButtonNamed: 'Back' translated 
					action: #back
					withIcon: ((ImageReadWriter formFromFileNamed:  (FileDirectory uri: self iconBackward) fullName)));
		addTransparentSpacerOfSize: 5 @ 0;
		addMorphBack: (self 
					simpleIconicButtonNamed: 'Refresh' translated 
					action: #reload
					withIcon:  ((ImageReadWriter formFromFileNamed:  (FileDirectory uri: self iconRefresh) fullName)));
		addTransparentSpacerOfSize: 5 @ 0;
		addMorphBack: (self 
					simpleIconicButtonNamed: 'Settings' translated 
					action: #reload
					withIcon:  ((ImageReadWriter formFromFileNamed:  (FileDirectory uri: self iconSettings) fullName))).	
					
	paneURL acceptOnCR: true.
	paneURL hideScrollBarsIndefinitely.
	
	^ pane. 
		