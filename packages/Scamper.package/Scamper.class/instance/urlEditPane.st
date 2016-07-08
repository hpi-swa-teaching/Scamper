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
				
	paneUI := (AlignmentMorph new)
				borderWidth: 0;
				layoutInset: 0;
				position: 1 @ 1;
				color: (Color r:0.1 g:1 b:1);
				addTransparentSpacerOfSize: 5 @ 0.
				
	reloadAndStopButton := (ScamperButton new)
								selfChangeAction: #reload 
								Icon: ((ImageReadWriter formFromFileNamed:  (FileDirectory uri: self iconRefresh) fullName))
								labelInfo: #status.
		
	pane 	
		addMorph: paneURL fullFrame: ( LayoutFrame 
					fractions: (5@0 corner: 1@1)
					offsets: (60@0 corner: 0@0));
		addTransparentSpacerOfSize: 5 @ 0;
		addMorph: (self 
					simpleIconicButtonNamed: 'Home' translated
					action: #visitStartPage
					withIcon:  ((ImageReadWriter formFromFileNamed:  (FileDirectory uri: self iconHome) fullName)));
		addTransparentSpacerOfSize: 5 @ 0;
		addMorph: (self 
					simpleIconicButtonNamed: 'Forward' translated 
					action: #forward
					withIcon:  ((ImageReadWriter formFromFileNamed:  (FileDirectory uri: self iconForward) fullName)));
		addTransparentSpacerOfSize: 5 @ 0;
		addMorph: (self 
					simpleIconicButtonNamed: 'Back' translated 
					action: #back
					withIcon: ((ImageReadWriter formFromFileNamed:  (FileDirectory uri: self iconBackward) fullName)));
		addTransparentSpacerOfSize: 5 @ 0;
		
		addMorphBack: reloadAndStopButton;
		addTransparentSpacerOfSize: 5 @ 0;
		addMorphBack: (self 
					simpleIconicButtonNamed: 'Options' translated 
					action: #openOptionsPanel 
					withIcon:  ((ImageReadWriter formFromFileNamed:  (FileDirectory uri: self iconOptions) fullName))).	
					
	paneURL acceptOnCR: true.
	paneURL hideScrollBarsIndefinitely.
	
	^ pane. 
		