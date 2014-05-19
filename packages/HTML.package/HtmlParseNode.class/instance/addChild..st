accessing
addChild: aNode

	self children: (self children copyWith: aNode).
	aNode parent: self.