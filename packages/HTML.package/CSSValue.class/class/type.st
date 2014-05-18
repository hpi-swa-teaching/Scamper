as yet unclassified
type

	| s in out |
	s := self name.
	s := s last: s size - 'CSS' size.
	s := s first: s size - 'Value' size.
	out := WriteStream on: String new.
	in := ReadStream on: s.
	out nextPut: $<; nextPut: in next asLowercase.
	[in atEnd] whileFalse: 
	[
		in peek isUppercase ifTrue: [out nextPut: $-]. 
		out nextPut: in next asLowercase
	].
	out nextPut: $>.
	^out contents 