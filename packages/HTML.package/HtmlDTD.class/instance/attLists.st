accessing
attLists
	"Answer the value of attLists"

	^ attLists isNil 
		ifTrue:[#()]
		ifFalse:[attLists]