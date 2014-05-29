*HTML
fromColorName: aString
	(self rgbOf: aString) ifNotNilDo: [:rgb | ^Color r: rgb first / 255 g: rgb second / 255 b: rgb third / 255].
	^nil