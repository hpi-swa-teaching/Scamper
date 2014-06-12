class initialization
installFontsIfNecessary
	fontsInstalled ifNil: [self installFonts].
	fontsInstalled ifFalse: [self installFonts].