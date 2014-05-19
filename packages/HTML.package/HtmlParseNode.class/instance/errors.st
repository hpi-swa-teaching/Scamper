accessing
errors
	"Answer the value of errors"

	^ errors isNil ifTrue: [#()] ifFalse: [errors]