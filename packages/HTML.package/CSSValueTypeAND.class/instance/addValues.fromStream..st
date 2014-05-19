testing
addValues: aCollection fromStream: in

	| pos sz |
	pos := in position.
	sz := aCollection size.
	self types do: 	
	[:ea |
		(ea addValues: aCollection fromStream: in) ifFalse: 
		[
			in position: pos.
			[aCollection size > sz] whileTrue: [aCollection removeLast].
			^false
		]
	].
	^true