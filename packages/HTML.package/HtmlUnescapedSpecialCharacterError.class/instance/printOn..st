printing
printOn: aStream

	| c |

	c := self parent document content at: self position.

	aStream nextPutAll: 'Character: '.
	c asString printOn: aStream.
	aStream nextPutAll: ' should be '.
	aStream nextPutAll: (CharactersToEntities at: c ifAbsent: ['escaped.']).