as yet unclassified
initializeTabs

	| pair|
	
	self tabs ifNil: [self tabs: OrderedCollection new].
	self currentTab: 0.
	pair:= Array new: 2.
	pair at: 1 put: '';
		at: 2 put: self currentTab asString.
	self currentTab: 1.
	self tabs addLast: pair.
	self addTabButton.
	