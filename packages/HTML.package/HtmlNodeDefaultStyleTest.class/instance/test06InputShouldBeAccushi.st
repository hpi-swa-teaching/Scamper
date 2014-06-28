accessing
test06InputShouldBeAccushi
	| document node |
	document := HtmlDocument new.
	document parseContents: (ReadStream on: '<kbd>sample input</kbd>').
	node := document children first.
	self assert: (self styleResolver getStyle: #family for: node) 
		equals: (TextStyle named: 'Accushi').