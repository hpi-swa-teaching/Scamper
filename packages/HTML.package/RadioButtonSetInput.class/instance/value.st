input handling
value
	buttons do: [ :b |
		b pressed ifTrue: [ ^b valueIfPressed ] ].
	self error: 'asked for value when inactive!'.