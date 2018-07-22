rendering
addToFormatter: aFormatter
	| newBlockMorph |
	self boxType == #inline ifTrue: [
		self startStyles: aFormatter.
		self children do: [:e | e addToFormatter: aFormatter ].
		self endStyles: aFormatter ].
	self boxType == #inlineBlock ifTrue: [
		self startStyles: aFormatter.
		newBlockMorph := self getHtmlBlockMorph.
		aFormatter addMorph: newBlockMorph.
		aFormatter incompleteMorphs addAll: newBlockMorph incompleteMorphs.
		self endStyles: aFormatter ]