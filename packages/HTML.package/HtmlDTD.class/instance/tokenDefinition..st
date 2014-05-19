private
tokenDefinition: aToken

	| def fmt s in |

	fmt := (aToken copyWithout: $%)	copyWithout: $;.
	fmt := ('% ',fmt, ' ').
	def := entities detect: [:ea | ea beginsWith: fmt] ifNone: ['"', aToken, '"'].
	in := ReadStream on: def.
	in upTo: $".
	s := in upTo: $".
	^s	