accessing
parent
	"Answer the value of parent"

	^ parent isNil ifTrue: [nil] ifFalse: [parent first].