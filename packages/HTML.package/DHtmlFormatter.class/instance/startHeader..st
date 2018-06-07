formatting commands
startHeader: level
	self ensureNewlines: 3.
	boldLevel := boldLevel + 1. "self increaseBold"
	self startFont: (self headerFont: level).