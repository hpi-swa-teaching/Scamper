private-formatting
fontWith: aTextStyle and: aFontSize
	| bestMatch bestDelta size |
	bestDelta := nil.
	bestMatch := nil.
	size := TextStyle pixelsToPoints: aFontSize.
	aTextStyle fonts do: [:font | |delta|
		delta := (size - font pointSize) abs.
		((bestMatch isNil) or: [delta < bestDelta])
			ifTrue: [ bestMatch := font.
					bestDelta := delta]].
	^bestMatch.