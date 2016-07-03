access
status: aSymbol
	
	status := aSymbol.
	self changed: #status.
	(reloadAndStopButton = nil) 
		ifFalse: [ reloadAndStopButton changeBetweenReloadAndStopWithState: self status].