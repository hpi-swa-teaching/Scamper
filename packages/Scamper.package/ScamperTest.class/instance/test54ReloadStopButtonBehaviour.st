as yet unclassified
test54ReloadStopButtonBehaviour

	"Check whether Scamper is displaying the cancel button if needed"
	scamper model status: 'downloading'.	
	self assert: (scamper model reloadAndStopButton labelGraphic = 'Scamper/scamper-icons/png/cancel-w24-h24.png').
	
	"Check whether Scamper is displaying the referesh button if needed"
	scamper model status: 'sittin'.	
	self assert: (scamper model reloadAndStopButton labelGraphic = 'Scamper/scamper-icons/png/reload-w24-h24.png').
	
	scamper model status: 'done.'.	
	self assert: (scamper model reloadAndStopButton labelGraphic = 'Scamper/scamper-icons/png/reload-w24-h24.png').



