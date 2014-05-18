formatting commands
addIncompleteMorph: aMorph
	"add a morph, and note that it needs to download some more state before reaching its ultimate state"
	self addMorph: aMorph.
	incompleteMorphs add: aMorph.