accessing
level

	| level p |
	level := 0.
	p := self.
	[p notNil] whileTrue: [p := p parent. p notNil ifTrue:[level := level + 1]].
	^level