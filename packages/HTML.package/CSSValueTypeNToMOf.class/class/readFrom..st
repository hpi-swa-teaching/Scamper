instance creation
readFrom: in

	in peek = ${ ifTrue:
	[
		| s n m |
		s := (in upTo: $}) findTokens: ', {}'.
		n := s first asNumber.
		m := s last asNumber.
		^((CSSValueTypeNToMOf new n: n) m: m).
	].
	^nil