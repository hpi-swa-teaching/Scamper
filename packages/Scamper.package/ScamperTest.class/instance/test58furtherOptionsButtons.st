as yet unclassified
test58furtherOptionsButtons
	
	| optionsPanelInnerAlignmentBox optionsPanelInnerAlignmentBoxChildren |
	
	scamper model switchOptionsPanel.
	
	"Check whether Scampers optionsPanel contains a AlignmentMorph"
	self assert: (scamper model optionsPanel submorphs size = 1).
	optionsPanelInnerAlignmentBox := scamper model optionsPanel submorphs at: 1.
	self assert: (optionsPanelInnerAlignmentBox isKindOf: AlignmentMorph).
	
	"Check whether Scamper is loading the two iconicButtons into the AlignmentMorph"
	optionsPanelInnerAlignmentBoxChildren := optionsPanelInnerAlignmentBox submorphs.
	"It should cotain 2 IconicButtons"
	self assert: (optionsPanelInnerAlignmentBoxChildren size = 2).
	optionsPanelInnerAlignmentBoxChildren do: [ :element | self assert:( element isKindOf: IconicButton)].
	
	

	



