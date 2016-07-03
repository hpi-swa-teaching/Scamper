as yet unclassified
test55ReloadButtonBehaviour
	"Check whether Scamper is displaying the referesh button if needed"
	
	| loadedLabel |
	
	scamper model status: 'sittin'.
	loadedLabel := scamper model reloadAndStopButton labelInfo.	
	self assert: (loadedLabel = 'Reload').
	
	scamper model status: 'done.'.
	loadedLabel := scamper model reloadAndStopButton labelInfo.	
	self assert: (loadedLabel = 'Reload').
	



