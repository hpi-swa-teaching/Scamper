private
nextChar
	| c |
	self atEnd ifTrue: [ ^nil ].
	c := text at: pos.
	pos := pos + 1.
	^c