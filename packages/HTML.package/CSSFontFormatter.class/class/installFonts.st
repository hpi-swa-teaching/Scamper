class initialization
installFonts
	((FileDirectory uri: 'Scamper' , FileDirectory slash , 'fonts') fileNamesMatching: '*.ttf')
		do: [:fontfile | 
			Transcript cr; show: 'install ', (FileDirectory uri: 'Scamper' , FileDirectory slash , 'fonts') fullName ,  FileDirectory slash , fontfile; cr; show: 'This file exists? ' , ((FileDirectory uri: 'Scamper' , FileDirectory slash , 'fonts') fileExists: fontfile).
			TTCFont newTextStyleFromTTFile:
									(FileDirectory uri: 'Scamper' , FileDirectory slash , 'fonts') fullName , FileDirectory slash , fontfile].
	fontsInstalled := true.