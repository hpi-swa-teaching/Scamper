testing
addValues: aCollection fromStream: in

	| pos |
	pos := in position.
	(type addValues: aCollection fromStream: in) ifFalse:[in position: pos].
	^true