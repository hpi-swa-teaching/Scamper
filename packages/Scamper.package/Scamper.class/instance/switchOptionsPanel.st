menus
switchOptionsPanel
	
	| pane northEastPosition |
	
	northEastPosition := (self webContentsPane getNorthEastCornerPosition asString).
	
	pane := (AlignmentMorph new openInHand)
		addMorph: (self simpleButtonNamed: northEastPosition action: #reload text: northEastPosition). 
				
	
