accessing
rows
	| a |
	a := self attributes at: 'rows' ifAbsent: ['2'].
	^(Integer readFrom: (ReadStream on: a)) max: 1.