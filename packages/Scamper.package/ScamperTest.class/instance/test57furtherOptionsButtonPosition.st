as yet unclassified
test57furtherOptionsButtonPosition
	"Check whether Scamper is displaying the options panel on click of the options button"
	
	scamper model switchOptionsPanel.
	self assert: (scamper model optionsPanel notNil).
	

	



