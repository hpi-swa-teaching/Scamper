testing
tagIsOptional: aTag

	| decl |
	decl := (self elements detect: [:ea | ea beginsWith: (aTag asUppercase)]).
	^((decl splitOn: ' ') at: 2) = 'O'