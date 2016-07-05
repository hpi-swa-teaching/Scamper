as yet unclassified
addTabButton
	|button indexOfTab|
				
	indexOfTab:= (self tabs size).
	
	button:= (SimpleButtonMorph new
		target: self;
		hResizing: #spaceFill;
		label: ((self tabs at: indexOfTab) at: 2);
		actionSelector: #openTab:;
		arguments: indexOfTab asOrderedCollection).
		button openInWorld.
	
	tabPaneVariable addMorph: button.
					