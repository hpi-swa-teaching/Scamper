as yet unclassified
test56furtherOptionsButtonsBehaviour
	"Check whether Scamper is displaying the options panel on click of the options button"
	
	scamper model status switchOptionsPanel.
	self assert: (scamper model optionsPanel).
	

	



