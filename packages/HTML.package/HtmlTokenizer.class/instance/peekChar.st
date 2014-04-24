private
peekChar
	self atEnd ifTrue: [ ^nil ].
	^text at: pos