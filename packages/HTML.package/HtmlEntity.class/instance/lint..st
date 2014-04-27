testing
lint: aStream
	"do a lint check, reporting to aStream"

	self lintAttributes: aStream.
	contents
		do:
			[ :c | 
			(c isComment not and: [ (self shouldContain: c) not ])
				ifTrue:
					[ aStream
						nextPutAll: '<' , self tagName , '> should not contain <' , c tagName;
						nextPutAll: '>'.
					aStream cr ] ].
	contents do: [ :c | c lint: aStream ]