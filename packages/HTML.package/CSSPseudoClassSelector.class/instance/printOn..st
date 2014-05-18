as yet unclassified
printOn: aStream

	| s |

	s := self pseudoClassName asString.
	aStream nextPut: $: ; nextPutAll: s asLowercase