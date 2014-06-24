layout
addHorizontalTableLines
	self layoutPolicy rows do: [ :ea |
		self addMorph: (LineMorph from: 0@(ea position) to: (self width)@(ea position) color: Color black width: 1). ].
	self addMorph: (LineMorph from: 0@(self height) to: (self width)@(self height) color: Color black width: 1).