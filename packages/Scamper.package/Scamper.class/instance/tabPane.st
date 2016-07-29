as yet unclassified
tabPane


	tabPaneVariable:= (AlignmentMorph new)
		hResizing: #shrinkWrap;
		color: (Color r:1 g:1 b:1).
		
	tabPaneVariable addMorphBack: (self
		simpleIconicButtonNamed: 'new Tab' translated
		action: #openNewTab 
		withIcon:  ((ImageReadWriter formFromFileNamed:  (FileDirectory uri: self iconNewTab) fullName))).	
	
	^ tabPaneVariable.