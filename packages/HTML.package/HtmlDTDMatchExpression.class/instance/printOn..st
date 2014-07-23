printing
printOn: aStream

	expression do: [:ea | ea printOn: aStream. aStream nextPut: $ ]