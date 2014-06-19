as yet unclassified
initialize
	super initialize.
	self layoutPolicy: HtmlGridLayout new.
	3 timesRepeat: [
	self layoutPolicy cols addLast: (HtmlGridColumn new width: 10; min: 0; max: 9999).]