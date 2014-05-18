formatting commands
decreaseFontBy: relSize
	self startFont: (TextFontChange fontNumber: ((self lastFontSize - relSize) min: 4))