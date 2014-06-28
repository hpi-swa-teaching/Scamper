layout
addHorizontalTableLines
	self layoutPolicy rows do: [ :ea |
		self addLineFrom: 0@(ea position) to: (self width)@(ea position).].
	self addLineFrom: 0@(self height) to: (self width)@(self height).