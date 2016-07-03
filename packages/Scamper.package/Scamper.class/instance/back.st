menus
back
	"The user hit the back button -- go to the previous document"

	"this method is added to Scamper: Aibek 4/18/99"

	currentUrlIndex > 1
		ifFalse: [ ^ self ].
	currentUrlIndex := currentUrlIndex - 1.
	currentUrlIndex <= recentDocuments size
		ifTrue: [ self displayDocument: (recentDocuments at: currentUrlIndex) ]