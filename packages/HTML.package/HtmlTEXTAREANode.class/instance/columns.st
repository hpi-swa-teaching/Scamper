accessing
columns
	| a |
	a := self attributes at: 'cols' ifAbsent: ['20'].
	^(Integer readFrom: (ReadStream on: a)) max: 5.