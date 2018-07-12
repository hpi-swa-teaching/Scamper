as yet unclassified
minExtentOf: aHtmlMorph in: newBounds
	"Return the minimal size aMorph's children would require given the new bounds"
	| min |
	min := 0@0.
	aHtmlMorph submorphsDo:[:m| | extent |
		
		extent := m minExtent.
		extent:= extent + (m layoutStyles extraMarginWidth @ m layoutStyles extraMarginHeight).
		min := min max: extent].
	^min