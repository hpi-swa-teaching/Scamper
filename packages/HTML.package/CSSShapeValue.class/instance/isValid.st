testing
isValid

	| s items |

	s := valueString trimBoth asLowercase.

	((s beginsWith: 'rect(') and: [s endsWith: ')']) ifTrue:
	[
		s := s last: (s size) - ('rect(' size).
		s := s first: s size -1.
		items := s findTokens: ' '.
		^items size = 4 and: [(items detect:
			[:ea | (ea = 'auto' or: [(CSSLengthValue fromString: ea) isValid]) not] ifNone: [nil]) isNil]	
	].
	^false