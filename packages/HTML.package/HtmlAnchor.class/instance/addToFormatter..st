formatting
addToFormatter: formatter
	| href name |

	name := self getAttribute: 'name'.
	name ifNotNil: [
		formatter noteAnchorStart: name ].

	href := self getAttribute: 'href'.

	href isNil
		ifTrue: [ super addToFormatter: formatter ]
		ifFalse: [ 	
			formatter startLink: href.
			super addToFormatter: formatter.
			formatter endLink: href. ].
