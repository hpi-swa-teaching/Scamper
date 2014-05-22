formatting commands
getPrefixOf: aString
	(aString beginsWith: 'font') ifTrue: [ ^ 'font' ].
	^ nil