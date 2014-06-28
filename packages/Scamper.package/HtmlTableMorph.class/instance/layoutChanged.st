layout
layoutChanged
	"Only redraw when layouting isn't finished yet"
	layoutFinished ifFalse: [^super layoutChanged]