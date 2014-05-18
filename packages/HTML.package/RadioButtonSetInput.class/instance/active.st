input handling
active
	"we are active if and only if one of our buttons is pressed"
	self name isNil
		ifTrue: [^false].
	buttons do: [ :b |
		b pressed ifTrue: [ ^true ] ].
	^false