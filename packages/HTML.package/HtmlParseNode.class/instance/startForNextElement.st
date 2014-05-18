accessing
startForNextElement

	^self children isEmpty ifTrue:
	[
		| in |
		in := ReadStream on: self document content.
		in position: start.
		in upTo: $>.
		in position
	]
	ifFalse:
	[
		self children last end
	]