initialization
initialize
	super initialize.
	children := OrderedCollection new.
	self layoutPolicy: TableLayout new;
		listDirection: #topToBottom;
		wrapDirection: #none;
		listCentering: #topLeft;
		wrapCentering: #topLeft;
		vResizing: #rigid;
		hResizing: #spaceFill