as yet unclassified
initialize 
	super initialize.
	self setText: ''. "compatability for squeak < 5.0"
	self acceptOnCR: true.