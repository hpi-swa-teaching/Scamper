accessing
stylesheetDocument
	self parent 
		ifNil: [ ^ nil ]
		ifNotNil: [ ^ self parent stylesheetDocument ]