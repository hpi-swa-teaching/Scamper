private-formatting
fontWith: aTextStyle and: aFontSize
	| size font |
	size := (CSSFontFormatter sizeFactorFor: aTextStyle)
				 * (TextStyle pixelsToPoints: aFontSize) ceiling.
	font := aTextStyle fonts detect: [:f | f pointSize = size]
							   ifNone: [ aTextStyle addNewFontSize: size].
	^font