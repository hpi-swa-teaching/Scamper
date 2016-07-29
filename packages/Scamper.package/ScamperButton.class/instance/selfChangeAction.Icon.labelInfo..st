as yet unclassified
selfChangeAction: anAction Icon: anIcon labelInfo: aString 

	self
		actionSelector: anAction;
		labelGraphic: anIcon;
		labelInfo: aString.
		
	super labelGraphic: anIcon.
	super actionSelector: anAction. 