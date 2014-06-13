class initialization
installFonts
	Transcript show: (FileDirectory uri: 'Scamper' , FileDirectory slash , 'fonts');
				cr;
				show: 'exists: ',(FileDirectory uri: 'Scamper' , FileDirectory slash , 'fonts') exists;
				cr;
				show: ((FileDirectory uri: 'Scamper' , FileDirectory slash , 'fonts') fileNames);
				cr.
	((FileDirectory uri: 'Scamper' , FileDirectory slash , 'fonts') fileNamesMatching: '*.ttf')
		do: [:fontfile | TTCFont newTextStyleFromTTFile:
									(FileDirectory uri: 'Scamper' , FileDirectory slash , 'fonts') fullName , FileDirectory slash , fontfile].
	fontsInstalled := true.