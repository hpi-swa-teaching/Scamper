changing page
startDownloadingStateIn: aDocument  url: aUrl
	"download the state for the given document in a background thread.  signal the foreground when the data has arrived"
	downloadingProcess := [	
		aDocument allSubentitiesDo: [ :e |
			e downloadState: aUrl ].
		documentQueue nextPut: #stateDownloaded.
		downloadingProcess := nil. ] newProcess.
	downloadingProcess resume.