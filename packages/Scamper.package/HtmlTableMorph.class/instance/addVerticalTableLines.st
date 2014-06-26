layout
addVerticalTableLines
	self layoutPolicy columns do: [ :ea |
		self addLineFrom: (ea position)@0 to: (ea position)@(self height).].
	self addLineFrom: (self width)@0 to: (self width)@(self height).