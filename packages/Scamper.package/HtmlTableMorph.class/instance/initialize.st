initialization
initialize
	layoutFinished := false.
	super initialize.
	self layoutPolicy: HtmlGridLayout new.
