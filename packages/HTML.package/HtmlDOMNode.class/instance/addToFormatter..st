rendering
addToFormatter: aFormatter
	self boxType == #inline ifTrue: [
		self startStyles: aFormatter.
		self children do: [:e | e addToFormatter: aFormatter ].
		self endStyles: aFormatter ].
	self boxType == #inlineBlock ifTrue: [
		self startStyles: aFormatter.
		aFormatter addMorph: self getHtmlBlockMorph.
		self endStyles: aFormatter ]