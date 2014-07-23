testing
addValues: aCollection fromStream: in

	| pos |
	[
		pos := in position.
		type addValues: aCollection fromStream: in
	] whileTrue:[].
	in position: pos.
	^true