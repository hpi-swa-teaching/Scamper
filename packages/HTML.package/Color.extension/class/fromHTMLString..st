*HTML
fromHTMLString: aString
	(self fromColorName: aString) ifNotNilDo: [:color | ^color].
	(self fromHexRGBString: aString) ifNotNilDo: [:color | ^color].
	(self fromRGBPercentageFunction: aString) ifNotNilDo: [:color | ^color].
	(self fromRGBFunction: aString) ifNotNilDo: [:color | ^color].
	^ self fromString: aString