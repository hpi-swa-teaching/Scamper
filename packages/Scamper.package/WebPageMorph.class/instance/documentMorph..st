accessing
documentMorph: aHtmlDocumentMorph
	self scroller removeAllMorphs.
	documentMorph := aHtmlDocumentMorph.
	self scroller addMorph: documentMorph.