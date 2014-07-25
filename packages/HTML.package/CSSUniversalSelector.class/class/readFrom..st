instance creation
readFrom: in

	in peek = $* ifTrue: [in next].
	^self new readAttributeSelectorsFrom: in