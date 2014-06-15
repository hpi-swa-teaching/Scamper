as yet unclassified
initialize
	super initialize.
	alignmentMorph := AlignmentMorph newColumn.
	alignmentMorph addMorphBack: (AlignmentMorph newSpacer: Color black).
	self addMorphBack: alignmentMorph.