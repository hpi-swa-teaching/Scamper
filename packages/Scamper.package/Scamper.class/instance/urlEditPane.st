window definition
urlEditPane
	"Create and return the URL edit pane."

	| pane paneUI paneURL |
	pane := (AlignmentMorph new)
				color: (Color r:1 g:1 b:1).
	
	paneURL := (PluggableTextMorph on: self text: #currentUrl accept: #jumpToAbsoluteUrlAsync:).
	
	paneUI := (AlignmentMorph new)
				borderWidth: 0;
				layoutInset: 0;
				position: 1 @ 1;
				color: (Color r:1 g:1 b:1);
				hResizing: #spaceFill;
				wrapCentering: #right;
				cellPositioning: #right;
				clipSubmorphs: true;
				addTransparentSpacerOfSize: 5 @ 0.
				
	paneUI addMorphBack: (self simpleIconicButtonNamed: 'Stop' 
							action: #stopEverything  
							withIcon: MenuIcons smallCancelIcon).
		
	pane addMorphBack: paneURL.					
	pane addMorphBack: paneUI.
	paneURL acceptOnCR: true.
	paneURL hideScrollBarsIndefinitely.
	^pane 
		