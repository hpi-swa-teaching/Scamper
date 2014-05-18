writing
writeArray: aCollection
	"write a serialized version of the ordered collection"

	| itemsPerLine | 

	itemsPerLine := 0.
	stream nextPutAll: '( '.
	indentLevel := indentLevel + 1.
	aCollection do: 
		[:x | 
			self write: x. 
			stream nextPutAll: ', '. 
			itemsPerLine := itemsPerLine + 1.
			itemsPerLine = arrayItemsPerLine ifTrue:[stream cr. itemsPerLine := 0] 
		].
	indentLevel := indentLevel - 1.
	aCollection isEmpty ifFalse: [ stream position: (stream position-2) ]. "Trim last comma space"
	stream nextPutAll: ')'.