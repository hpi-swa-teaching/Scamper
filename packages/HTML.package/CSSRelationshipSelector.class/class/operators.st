accessing
operators

	| out |
	out := WriteStream on: String new.
	self subclasses do:[:ea | out nextPutAll: ea operator].
	^out contents