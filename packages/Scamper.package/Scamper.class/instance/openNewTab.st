tabs
openNewTab

	| pair|
	pair:= Array new: 2.
	pair at: 1 put: document;
		at: 2 put: (self getTitle: document).
	
	self tabs ifNil: [self tabs: OrderedCollection new].
	self tabs addLast: pair. 
	self visitStartPage.