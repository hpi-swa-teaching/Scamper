testing
addValues: aCollection fromStream: in

	| pos |
	pos := in position.
	self types do:
	[:ea |
		(ea addValues: aCollection fromStream: in) ifTrue: [^true].
		in position: pos.
	].
	^false