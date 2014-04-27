attributes
rows
	| a |
	a := self getAttribute: 'rows' default: '2'.
	^(Integer readFrom: (ReadStream on: a)) max: 1.