font installation
installFonts
	"self installFonts"
	| fontFiles |
	fontFiles := (self fontDirectory fileNamesMatching: '*.ttf').
	fontFiles do: [:fontfile | 
			self newTextStyleFromTTFile:
					self fontDirectory fullName , FileDirectory slash , fontfile].
	numberOfInstalledFonts := fontFiles size.