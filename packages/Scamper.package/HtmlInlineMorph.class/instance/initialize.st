initialization
initialize
	super initialize.
	self nodes: OrderedCollection new.
	self layoutStyles: HtmlLayoutStyles new.
	self layoutPolicy: HtmlInlineLayout new.