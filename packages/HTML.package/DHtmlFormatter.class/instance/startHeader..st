formatting commands
startHeader: level
	| attribs |
	self ensureNewlines: 3.
	attribs := fontSpecs last.
	attribs add: (self headerFont: level);
		     add: TextEmphasis bold.
	self setAttributes 