layout
extent: newExtent
	super extent: newExtent.
	"Bug: Because the document is always sized to both-scrollbars-hidden-bounds"
	"there will always be scrollbars in both directions, even if only one is needed"
	self hideScrollBarsIndefinitely;
		 updateDocumentSize;
		 hideScrollBarsIndefinitely: false