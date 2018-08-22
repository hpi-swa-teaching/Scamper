font installation
installFontsIfNecessary

	| numberOfAvailableFonts |
	numberOfAvailableFonts := (self fontDirectory fileNamesMatching: '*.ttf') size.
	"numberOfAvailableFonts = 0 ifTrue: [self notify: 'Please make sure you have the necessary fonts in the right place and try again. Otherwise Scamper will not work.]."
	(numberOfAvailableFonts > numberOfInstalledFonts)
		ifTrue: [self installFonts].
