initialization
initialize
	super initialize.
	self nodes: OrderedCollection new.
	self layoutStyles: (HtmlLayoutStyles newFor: self).
	self layoutPolicy: HtmlInlineLayout new.