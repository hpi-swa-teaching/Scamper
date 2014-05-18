writing
writeDictionary: aCollection
	"write a serialized version of the ordered collection"

	stream nextPutAll: '{ '; nextPut: Character lf.
	indentLevel := indentLevel + 1.
	aCollection keysAndValuesDo: [:key :value | 
		0 to: indentLevel do: [:ea | stream nextPut: $ ].
		self write: key. 
		stream nextPutAll: ' = '. 
		self write: value.
		stream nextPutAll: '; '; nextPut: Character lf].
	indentLevel := -1.
	stream nextPutAll: '}'.