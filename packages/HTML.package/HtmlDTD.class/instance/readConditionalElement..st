actions
readConditionalElement: aStream

	| s |

	s := aStream upTo: $>.
	[s endsWith: ']]'] whileFalse: [s:= (s, '>',(aStream upTo: $>))].
