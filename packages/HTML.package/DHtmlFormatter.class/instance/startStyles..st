formatting commands
startStyles: styles
	| textAttributes |
	textAttributes := self parseTextAttributes: styles.
	self startFont: textAttributes.
	self setAttributes