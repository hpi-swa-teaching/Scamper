private
expandElementTokens

	| expanded changed |

	changed := true.
	expanded := elements.

	[changed] whileTrue:
	[
		changed := false.
		expanded := expanded collect:
		[:ea |
			| s |
			s := self expandTokensInLine: ea.
			s = ea ifFalse: [changed := true].
			s
		]
	].
	^elements := expanded