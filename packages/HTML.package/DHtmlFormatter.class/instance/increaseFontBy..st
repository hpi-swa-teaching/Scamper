formatting commands
increaseFontBy: relSize
	self startFont: (TextFontChange fontNumber: ((self lastFontSize + relSize) min: 4))