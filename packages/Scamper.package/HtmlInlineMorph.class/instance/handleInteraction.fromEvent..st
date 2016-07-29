accessing
handleInteraction: interactionBlock fromEvent: evt
	"Perform the changes in interactionBlock, noting any change in selection
	and possibly a change in the size of the paragraph (ar 9/22/2001 - added for TextPrintIts)"
	| oldEditor oldParagraph oldText |
	oldEditor := nil.
	oldParagraph := paragraph.
	oldText := oldParagraph text copy.

	"self selectionChanged."  "Note old selection"

		interactionBlock value.

	"(oldParagraph == paragraph) ifTrue:[
		""this will not work if the paragraph changed"
		"editor := oldEditor.     ""since it may have been changed while in block"
	"].
	self selectionChanged. 
	(oldText = paragraph text and: [ oldText runs = paragraph text runs ])
		ifFalse:[ 
			self paragraph composeAll.
			self updateFromParagraph ].
	self setCompositionWindow."