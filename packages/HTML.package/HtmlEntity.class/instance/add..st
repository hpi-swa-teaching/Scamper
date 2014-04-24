accessing
add: anObject
	"add an object to the receiver"
	(anObject isKindOf: String)
		ifTrue: [contents add: (HtmlTextEntity new text: anObject)]
		ifFalse: [contents add: anObject]