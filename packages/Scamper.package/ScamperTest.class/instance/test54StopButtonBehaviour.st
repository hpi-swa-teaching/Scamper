as yet unclassified
test54StopButtonBehaviour

	"Check whether Scamper is displaying the cancel button if needed"
	scamper model status: 'downloading'.	
	self assert: (scamper model reloadAndStopButton labelGraphic = 'Scamper/scamper-icons/png/cancel-w24-h24.png').



