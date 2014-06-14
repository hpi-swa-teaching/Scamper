formatting commands
startStyles: aDomNode
	| textAttributes |
	textAttributes := self parseTextAttributesFor: aDomNode.
	self startFont: textAttributes.
	self setAttributes