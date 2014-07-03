font installation
installFonts
	((FileDirectory uri: 'Scamper' , FileDirectory slash , 'fonts') fileNamesMatching: '*.ttf')
		do: [:fontfile | 
			self newTextStyleFromTTFile:
					(FileDirectory uri: 'Scamper' , FileDirectory slash , 'fonts') fullName , FileDirectory slash , fontfile].
	fontsInstalled := true.