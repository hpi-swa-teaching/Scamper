instance creation
serviceOpenInWebBrowser
	"Answer a service for opening a web browser on a file"

	^ SimpleServiceEntry 
			provider: self 
			label: 'open in web browser'
			selector: #openFile:
			description: 'open in web browser'
			buttonLabel: 'open'