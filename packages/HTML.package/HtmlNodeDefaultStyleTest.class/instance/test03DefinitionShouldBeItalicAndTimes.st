accessing
test03DefinitionShouldBeItalicAndTimes
	| document node |
	document := HtmlDocument new.
	document parseContents: (ReadStream on: '<dfn>definition</dfn>').
	node := document children first.
	self assert: (self styleResolver getStyle: #italic for: node) equals: true.
	self assert: (self styleResolver getStyle: #fontFamily for: node) 
		equals: (TextStyle named: 'NimbusRomanNo9L').