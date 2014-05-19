accessing
children
	"Answer the value of children"

	^ children isNil ifTrue: [#()] ifFalse: [children]