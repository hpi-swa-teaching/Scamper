as yet unclassified
stylesheetDocument
	self parent 
		ifNil: [ ^ nil ]
		ifNotNil: [ ^ self parent stylesheetDocument ]