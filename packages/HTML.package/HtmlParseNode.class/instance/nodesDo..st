iterating
nodesDo: aBlock

	aBlock value: self.
	self children do:[:ea | ea nodesDo: aBlock].