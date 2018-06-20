as yet unclassified
initialize 
	super initialize.
	self textMorph ifNil: [ 1 second asDelay wait ].
	self acceptOnCR: true.