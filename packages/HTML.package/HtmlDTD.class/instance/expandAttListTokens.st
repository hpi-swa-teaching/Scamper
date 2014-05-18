private
expandAttListTokens

	| expanded changed |

	changed := true.
	expanded := attLists.

	[changed] whileTrue:
	[
		changed := false.
		expanded := expanded collect:
		[:item |
			item collect: 
			[:ea |
				| s |
				s := self expandTokensInLine: ea.
				s = ea ifFalse: [changed := true].
				s
			]
		]
	].
	^attLists := expanded