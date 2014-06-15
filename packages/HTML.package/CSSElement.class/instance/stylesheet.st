as yet unclassified
stylesheet
	self parent 
		ifNil: [ ^ nil ]
		ifNotNil: [ ^ self parent stylesheet ]