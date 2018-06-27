initialization
initialize
	super initialize.
	self nodes: OrderedCollection new.
	self layoutPolicy: HtmlInlineLayout new.