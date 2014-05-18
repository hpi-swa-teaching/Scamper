initialize
on: aStream
	"Initialize myself with a stream"

	stream := aStream.
	(stream respondsTo: #ascii) ifTrue: [stream ascii].
	arrayItemsPerLine := 5.
	dictionaryItemsPerLine := 3.
	indentLevel := 0