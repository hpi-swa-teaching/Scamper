formatting commands
lastFontSize
	| textAttrib |
	fontSpecs isEmptyOrNil ifTrue: [^1].

	fontSpecs reverseDo: [:specs |
		textAttrib := specs detect: [:attrib | attrib isKindOf: TextFontChange] ifNone: [].
		textAttrib ifNotNil: [^textAttrib fontNumber]].

	^1 "default font size in Squeak (1) corresponds to HTML's default 4"