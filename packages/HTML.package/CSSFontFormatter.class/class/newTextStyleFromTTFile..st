font installation
newTextStyleFromTTFile: fileName
	| description array style |
	description := TTFontDescription addFromTTFile: fileName.
	array := self pointSizes collect: 
					[:pt | | f | 
					f := TTCFont new.
					f ttcDescription: description.
					f pointSize: pt].
	style := TTCFont reorganizeForNewFontArray: array name: array first name asSymbol.
	style defaultFontIndex: (style fontIndexOfPointSize: 12).
	^style