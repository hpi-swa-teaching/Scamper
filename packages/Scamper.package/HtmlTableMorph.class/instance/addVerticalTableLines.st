layout
addVerticalTableLines
	self layoutPolicy columns do: [ :ea |
		self addMorph: (LineMorph from: (ea position)@0 to: (ea position)@(self height) color: Color black width: 1). ].
	self addMorph: (LineMorph from: (self width)@0 to: (self width)@(self height) color: Color black width: 1).