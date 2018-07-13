accessing
test04CodeShouldBeCourierNew
	| document node |
	document := HtmlDocument new.
	document parseContents: (ReadStream on: '<code>computer code</code>').
	node := document children first.
	self assert: (self styleResolver getStyle: #fontFamily for: node) 
		equals: (TextStyle named: 'NimbusMonoL').