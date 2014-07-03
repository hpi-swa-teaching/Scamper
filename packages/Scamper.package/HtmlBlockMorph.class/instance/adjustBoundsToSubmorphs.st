layout
adjustBoundsToSubmorphs
"My bounds should always enclose the submorph's bounds"
"(that's actually not 100% correct, e.g. take the case of "
"<div style='width:100px'><div style='width:200px'></div></div>)."
"If I don't have submorphs (e.g. I'm just background-image'd), take "
"	my computedSize and the given position"
"Otherwise take the submorphBounds and make sure they "
"	have at least an extent of computedSize (the resulting bounds "
"	may reside completely in the negative space because of "
"	TextMorph's submorph placement - see BitBltDisplayScanner)."
"	However it's important to set a correct width as it is used"
"	for table column breadth ratio calulation"
	| submorphCorner delta |
	submorphCorner := self submorphs 
		ifEmpty: [ self position + self computedSize ]
		ifNotEmpty: [ ((self submorphBounds origin extent: self computedSize) quickMerge: self submorphBounds) corner asIntegerPoint ].
	delta := submorphCorner - self bounds corner.
	(delta isZero)
		ifTrue: [ ^ false ]
		ifFalse: 
			[ self extent: submorphCorner - self position. 
			  ^true ]