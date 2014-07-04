layout
extent: newExtent
	super extent: newExtent.
	self hideScrollBarsIndefinitely;
		 updateDocumentSize;
		 hideScrollBarsIndefinitely: false