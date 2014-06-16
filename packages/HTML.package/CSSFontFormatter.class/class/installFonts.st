class initialization
installFonts
	((FileDirectory uri: 'Scamper' , FileDirectory slash , 'fonts') fileNamesMatching: '*.ttf')
		do: [:fontfile | 
			TTCFont newTextStyleFromTTFile:
					(FileDirectory uri: 'Scamper' , FileDirectory slash , 'fonts') fullName , FileDirectory slash , fontfile].
	fontsInstalled := true.