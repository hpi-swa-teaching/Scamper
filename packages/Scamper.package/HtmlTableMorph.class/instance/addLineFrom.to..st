layout
addLineFrom: aPosition to: anotherPosition
	self addMorph: (LineMorph
			from: aPosition
			to: anotherPosition
			color: Color black
			width: 1).