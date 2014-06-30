accessing
test07TeletypeShouldBeTrebuchetMS
	| document node |
	document := HtmlDocument new.
	document parseContents: (ReadStream on: '<tt>teletype text</tt>').
	node := document children first.
	self assert: (self styleResolver getStyle: #family for: node) 
		equals: (TextStyle named: 'TrebuchetMS').