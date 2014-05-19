accessing
selectors
	"Answer the value of selectors"

	^ selectors isNil ifTrue:[#()] ifFalse: [selectors]