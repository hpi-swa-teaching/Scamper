as yet unclassified
initialize 
	super initialize.
	self textMorph ifNil: [ Transcript show: 'Text Morph is nil'. 1 second asDelay wait ].
	self acceptOnCR: true.