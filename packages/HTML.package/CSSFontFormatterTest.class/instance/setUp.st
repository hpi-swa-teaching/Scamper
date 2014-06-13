running
setUp
	Transcript show: FileDirectory default.
	Transcript show: (FileDirectory uri: 'Scamper/fonts').
	self timeout: 300.
	self fontFormatter: CSSFontFormatter new