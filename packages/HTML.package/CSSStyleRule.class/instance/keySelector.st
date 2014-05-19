accessing
keySelector
	"Answer the value of keySelectors"

	keySelector isNil ifTrue:
	[
		| ks |

		ks := self selector keySelectors.
		ks size = 0 ifTrue: [keySelector := self selector]
		ifFalse:
		[
			ks size = 1 
				ifTrue: [keySelector := ks first]
				ifFalse: [keySelector := CSSOrSelector new selectors: ks asSet]
		]
	].
	^ keySelector