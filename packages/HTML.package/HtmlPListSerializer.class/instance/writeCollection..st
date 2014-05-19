writing
writeCollection: aCollection
	"write a serialized version of the collection"

	aCollection isSequenceable 
		ifTrue: [ self writeArray: aCollection]
		ifFalse: [ self writeDictionary: aCollection] 