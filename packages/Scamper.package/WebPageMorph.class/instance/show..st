layout
show: aHtmlDocument
	self document: aHtmlDocument;
		documentMorph: (HtmlDocumentMorph newFor: aHtmlDocument);
		startDownloadingMorphState: documentMorph incompleteMorphs.

	self layoutChanged;
		resetExtent;
		updateDocumentSize.
