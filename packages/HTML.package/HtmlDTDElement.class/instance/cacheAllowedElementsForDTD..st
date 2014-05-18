accessing
cacheAllowedElementsForDTD: aDTD

	| |

	allowedElements isNil ifTrue:
	[
		allowedElements := Set new.

		allowedElements addAll: self contentRule allowedElements.

		allowedElements copy do: 
		[:ea | 
			ea isLiteral ifTrue: 
			[
				| el |
				el := aDTD elementForTag: ea expression.
				el startIsOptional ifTrue:
					[allowedElements addAll: (el cacheAllowedElementsForDTD: aDTD)]
			]
		]
	].

	^allowedElements