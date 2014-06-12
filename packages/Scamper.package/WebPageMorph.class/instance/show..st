layout
show: aHtmlDocument
	self document: aHtmlDocument;
		documentMorph: (HtmlDocumentMorph newFor: aHtmlDocument);
		startDownloadingMorphState: documentMorph incompleteMorphs;
		resetExtent.