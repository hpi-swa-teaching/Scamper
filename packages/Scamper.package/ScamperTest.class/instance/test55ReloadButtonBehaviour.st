as yet unclassified
test55ReloadButtonBehaviour
	
	"Check whether Scamper is displaying the referesh button if needed"
	scamper model status: 'sittin'.	
	self assert: (scamper model reloadAndStopButton labelGraphic = 'Scamper/scamper-icons/png/reload-w24-h24.png').
	
	scamper model status: 'done.'.	
	self assert: (scamper model reloadAndStopButton labelGraphic = 'Scamper/scamper-icons/png/reload-w24-h24.png').
	



