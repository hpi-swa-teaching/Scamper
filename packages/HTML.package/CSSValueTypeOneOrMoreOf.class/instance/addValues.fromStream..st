as yet unclassified
addValues: aCollection fromStream: in

	| one pos |
	one := false.
	[
		pos := in position.
		type addValues: aCollection fromStream: in
	] whileTrue: [one := true].
	in position: pos.
	^one