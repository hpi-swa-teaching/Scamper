accessing
addProperty: anObject
	
	
	self properties: (self properties copyWith: anObject).
	anObject parent: self.
