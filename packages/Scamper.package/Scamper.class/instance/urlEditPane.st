window definition
urlEditPane
	"Create and return the URL edit pane."

	| pane paneUI paneURL |
	pane := (AlignmentMorph new)
				hResizing: #spaceFill;
				color: (Color r:1 g:1 b:1).
	
	paneURL := (PluggableTextMorph on: self text: #currentUrl accept: #jumpToAbsoluteUrlAsync)
				height: 24.
				"hResizing: #spaceFill;
				spaceFillWeight: 1;"
				
				.
	
	paneUI := (AlignmentMorph new)
				borderWidth: 0;
				layoutInset: 0;
				position: 1 @ 1;
				color: (Color r:0.1 g:1 b:1);
				addTransparentSpacerOfSize: 5 @ 0.
		
	pane 
		
		addMorph: paneURL fullFrame: ( LayoutFrame 
					fractions: (0@0 corner: 1@1)
					offsets: (60@0 corner: 0@0));
		addTransparentSpacerOfSize: 5 @ 0;
		addMorph: (self 
					simpleIconicButtonNamed: 'Forward' 
					action: #forward
					withIcon:  ((ImageReadWriter formFromFileNamed:  (FileDirectory uri: self iconForward) fullName)));
		addTransparentSpacerOfSize: 5 @ 0;
		addMorph: (self 
					simpleIconicButtonNamed: 'Home'
					action: #visitStartPage
					withIcon:  ((ImageReadWriter formFromFileNamed:  (FileDirectory uri: self iconHome) fullName)));
		addTransparentSpacerOfSize: 5 @ 0;
		addMorph: (self 
					simpleIconicButtonNamed: 'Back'  
					action: #back
					withIcon: ((ImageReadWriter formFromFileNamed:  (FileDirectory uri: self iconBackward) fullName)));
		addTransparentSpacerOfSize: 5 @ 0;
		addMorphBack: (self 
					simpleIconicButtonNamed: 'Reload' 
					action: #reload
					withIcon:  ((ImageReadWriter formFromFileNamed:  (FileDirectory uri: self iconRefresh) fullName))).	
					
	paneURL acceptOnCR: true.
	paneURL hideScrollBarsIndefinitely.
	^pane 
		