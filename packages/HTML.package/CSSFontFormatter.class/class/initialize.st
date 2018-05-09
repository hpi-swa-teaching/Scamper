class initialization
initialize
	super initialize.
	numberOfInstalledFonts := 0.
	self installFontsIfNecessary.