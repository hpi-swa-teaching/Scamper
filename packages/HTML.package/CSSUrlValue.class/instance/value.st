accessing
value

	| s |

	s := valueString trimBoth.

	^self isValid ifTrue:
	[
		(s beginsWith: 'url(') ifTrue:
		[
			s := s last: s size - 4.
			s := s first: s size - 1.
			s := s trimBoth unquoted.
		]
		ifFalse: [ s unquoted ]
	]
	ifFalse: ['']