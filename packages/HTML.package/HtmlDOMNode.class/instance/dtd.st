accessing
dtd

	dtd isNil ifTrue: [self parent notNil ifTrue: [dtd := self parent dtd]].
	dtd isNil ifTrue: [self halt].
	^dtd