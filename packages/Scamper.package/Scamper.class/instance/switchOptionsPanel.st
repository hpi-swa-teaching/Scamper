menus
switchOptionsPanel
"Opens up on click a panel with several option buttons."

	(optionsPanel isNil) 
	ifTrue: [
	
	optionsPanel := (RectangleMorph new)
						position: self optionsPanelPosition;
						width: self optionsPanelWidth;
						height: self optionsPanelHeight;
						color: (Color white);
						borderWidth: 0;
						yourself. 
		
	optionsPanel addMorph: (self optionsPanelButtonPaneWithPosition: optionsPanel position).
	webPageMorph addMorph: optionsPanel.
	
	] ifFalse: [
		optionsPanel delete.
		optionsPanel := nil.
	].
				
	
