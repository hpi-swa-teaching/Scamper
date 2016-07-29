as yet unclassified
addTabButton
	|button indexOfTab|
				
	indexOfTab:= (self tabs size).
	
	button:= (SimpleButtonMorph new
		target: self;
		color: (Color r:1 g:1 b:1);
		hResizing: #spaceFill;
		label: ((self tabs at: indexOfTab) at: 2);
		actionSelector: #openTab:;
		arguments: indexOfTab asOrderedCollection).
		button openInWorld.
	
	tabPaneVariable addMorph: button.
					