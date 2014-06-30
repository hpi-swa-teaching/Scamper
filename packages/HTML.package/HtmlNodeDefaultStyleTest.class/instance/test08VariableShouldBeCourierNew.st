accessing
test08VariableShouldBeCourierNew
	| document node |
	document := HtmlDocument new.
	document parseContents: (ReadStream on: '<var>sample variable</var>').
	node := document children first.
	self assert: (self styleResolver getStyle: #family for: node) 
		equals: (TextStyle named: 'NimbusMonoL').