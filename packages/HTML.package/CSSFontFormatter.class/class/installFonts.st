class initialization
installFonts
	((FileDirectory uri: 'Scamper' , FileDirectory slash , 'fonts') fileNamesMatching: '*.ttf')
		do: [:fontfile | 
			Transcript show: 'install', fontfile;
						cr.			
			TTCFont newTextStyleFromTTFile:
									(FileDirectory uri: 'Scamper' , FileDirectory slash , 'fonts') fullName , FileDirectory slash , fontfile].
	fontsInstalled := true.