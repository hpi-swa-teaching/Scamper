menus
forward
	"this method is added to Scamper: Aibek 4/18/99"
	currentUrlIndex >= recentDocuments size
		ifTrue: [^self]
		ifFalse: [
			currentUrlIndex := currentUrlIndex + 1.
			self displayDocument: (recentDocuments at: currentUrlIndex).
		]
