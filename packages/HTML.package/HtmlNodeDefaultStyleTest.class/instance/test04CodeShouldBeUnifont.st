accessing
test04CodeShouldBeUnifont
	| document node |
	document := HtmlDocument new.
	document parseContents: (ReadStream on: '<code>computer code</code>').
	node := document children first.
	self assert: (self styleResolver getStyle: #family for: node) 
		equals: (TextStyle named: 'Unifont').