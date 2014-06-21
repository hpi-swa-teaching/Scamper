as yet unclassified
initialize
	super initialize.
	self layoutPolicy: HtmlGridLayout new.
	3 timesRepeat: [
	self layoutPolicy columns addLast: (HtmlGridSpace new breadth: 10; min: 0; max: 9999).]