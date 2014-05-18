testing
addValues: aCollection fromStream: in

	| oneWorked gotOne |

	oneWorked := false.
	gotOne := false.
	[
		self types do:
		[:ea |
			(ea addValues: aCollection fromStream: in) 
				ifTrue: [gotOne := oneWorked := true]
		].
	(gotOne and: [in atEnd not])
	] whileTrue: [ gotOne := false ].

	^oneWorked