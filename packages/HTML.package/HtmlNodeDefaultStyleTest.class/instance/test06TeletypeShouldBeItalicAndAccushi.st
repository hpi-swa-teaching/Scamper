accessing
test06TeletypeShouldBeItalicAndAccushi
	| document node |
	document := HtmlDocument new.
	document parseContents: (ReadStream on: '<tt>teletype text</tt>').
	node := document children first.
	self assert: (self styleResolver getStyle: #italic for: node) equals: true.
	self assert: (self styleResolver getStyle: #family for: node) 
		equals: (TextStyle named: 'Accushi').