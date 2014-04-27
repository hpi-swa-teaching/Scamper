attributes
columns
	| a |
	a := self getAttribute: 'cols' default: '20'.
	^(Integer readFrom: (ReadStream on: a)) max: 5.