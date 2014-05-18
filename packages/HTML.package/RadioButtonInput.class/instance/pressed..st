button state
pressed: aBoolean
	state := aBoolean.
	self changed: #pressed.
	button ifNotNil: [button step].
	^true