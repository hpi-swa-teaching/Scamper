testing
test13AttributesInUppercaseShouldBeParsed
	| doc |
	doc := HtmlDocument new 
		parseContents: (ReadStream on: '<A HREF="test">link</A>').
	self assert: HtmlANode equals: doc children first class.
	self assert: (doc children first attributes includesKey: 'href').
	self assert: 'test' equals: (doc children first attributes at: 'href')