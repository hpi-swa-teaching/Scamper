as yet unclassified
initialize
	super initialize.
	alignmentMorph := AlignmentMorph newRow.
	alignmentMorph addMorphBack: (AlignmentMorph newSpacer: Color black).
	self addMorphBack: alignmentMorph.