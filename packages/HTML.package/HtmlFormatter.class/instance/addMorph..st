formatting commands
addMorph: aMorph
	"add a morph to the output"
	| savedAttributes |
	self addChar: Character space.

	savedAttributes := outputStream currentAttributes.
	outputStream currentAttributes: (savedAttributes copyWith: (TextAnchor new anchoredMorph: aMorph)).
	self addChar: (Character value: 1).
	outputStream currentAttributes: savedAttributes.

	self addChar: Character space.

	morphsToEmbed add: aMorph.