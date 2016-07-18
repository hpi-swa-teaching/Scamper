menus
switchOptionsPanel
"Opens up on click a panel with several option buttons."
	
	optionsPanel := (RectangleMorph new)
						position: self optionsPanelPosition;
						width: self optionsPanelWidth;
						height: self optionsPanelHeight;
						color: (Color green);
						borderWidth: 0. 
		
	webPageMorph addMorph: optionsPanel.
	
	optionsPanel addMorph: self optionsPanelButtonPane.
				
	
