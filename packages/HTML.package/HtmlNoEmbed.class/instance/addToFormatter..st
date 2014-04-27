formatting
addToFormatter: aFormatter
	"Check if the last incomplete morph has the property #embedded set.
	If so, assume that the last <EMBED> tag has been handled."
	| morphs |
	morphs := aFormatter incompleteMorphs.
	(morphs isEmpty not and:[(morphs last valueOfProperty: #embedded) == true])
		ifTrue:[^self].
	"If not handled do the usual stuff"
	^super addToFormatter: aFormatter