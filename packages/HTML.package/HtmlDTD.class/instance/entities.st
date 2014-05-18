accessing
entities
	"Answer the value of entities"

	^ entities isNil 
		ifTrue:[#()]
		ifFalse: [entities]