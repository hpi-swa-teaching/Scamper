layout
resetExtent
	super resetExtent.
	"inspired by ScrollPane>>extent:"
	self resizeScrollBars; 
		hideOrShowScrollBars;
		vSetScrollDelta;
		hSetScrollDelta