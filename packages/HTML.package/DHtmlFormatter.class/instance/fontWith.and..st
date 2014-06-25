private-formatting
fontWith: aTextStyle and: aFontSize
	| size |
	size := TextStyle pixelsToPoints: aFontSize.
	^aTextStyle fonts detectMin: [ :font | (size - font pointSize) abs]