private
expandTokensInLine: aString

	| in out s |

	in := ReadStream on: aString.
	out := WriteStream on: (String new: 20).
	[in atEnd] whileFalse:
	[
		s := in upTo: $%.
		out nextPutAll: s.
		in atEnd 
			ifFalse: 
			[ 
				out nextPutAll: 
					(((self tokenDefinition: 
						(in upTo: $;)) findTokens: ' ')joinOn: ' ') 
			]
	].
	^out contents