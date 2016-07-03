as yet unclassified
test54StopButtonBehaviour

	"Check whether Scamper is displaying the cancel button if needed"
	
	| loadedLabel |
	
	scamper model status: 'downloading'.
	loadedLabel := scamper model reloadAndStopButton labelInfo.	
	self assert: (loadedLabel = 'Cancel').



