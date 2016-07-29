tabs
addTab
	|pair|
	
	pair:= Array new: 2.
	pair at: 1 put: '';
		at: 2 put: self currentTab asString.
		
	self tabs addLast: pair.
	self currentTab: (self tabs size).
	self addTabButton.
