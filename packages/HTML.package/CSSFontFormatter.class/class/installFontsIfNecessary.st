font installation
installFontsIfNecessary
	fontsInstalled ifNil: [self installFonts].
	fontsInstalled ifFalse: [self installFonts].