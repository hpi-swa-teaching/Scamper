accessing
elements
	"Answer the value of elements"

	^ elements isNil 
		ifTrue:[#()]
		ifFalse:[elements]