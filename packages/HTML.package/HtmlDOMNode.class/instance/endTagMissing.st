accessing
endTagMissing
	"Answer the value of endTagMissing"

	^self hasTrailingSlash 
		ifTrue:[false] 
		ifFalse:
		[
			endTagMissing isNil ifTrue: [endTagMissing := false].
			endTagMissing
		]