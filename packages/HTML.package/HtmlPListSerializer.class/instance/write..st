writing
write: object
	"write a serialized version of object - either an ordered collection, a dictionary, or something we can convert to a string"

	object isString 
		ifFalse: [ self writeCollection: object]
		ifTrue: [ self writeString: object asString] 