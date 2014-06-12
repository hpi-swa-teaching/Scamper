class initialization
installFonts
	((FileDirectory uri: 'Scamper/fonts/') fileNamesMatching: '*.ttf')
		do: [:fontfile | TTCFont newTextStyleFromTTFile:
									(FileDirectory uri: 'Scamper/fonts/') fullName,'/',fontfile].
	fontsInstalled := true.