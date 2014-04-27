formatting
addToFormatter: formatter
	| url embeddedMorph |
	self src isNil ifTrue:[^self].
	url := self src.
	embeddedMorph := self embeddedMorphFor: url.
	embeddedMorph isNil ifTrue:[^self].
	formatter baseUrl ifNotNil:[url := url asUrlRelativeTo: formatter baseUrl].
	embeddedMorph extent: self extent.
	embeddedMorph sourceUrl: url.
	embeddedMorph setProperty: #embedded toValue: true.
	formatter addIncompleteMorph: embeddedMorph.