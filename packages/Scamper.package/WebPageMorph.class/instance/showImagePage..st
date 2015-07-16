layout
showImagePage: aImageMorph
	self document: #image;
		documentMorph: aImageMorph;
		layoutChanged;
		resetExtent;
		updateDocumentSize.