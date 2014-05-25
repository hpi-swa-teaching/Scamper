*HTML
fromHTMLString: aString
	(self fromHexRGBString: aString) ifNotNilDo: [:color | ^color].
	^ self fromString: aString