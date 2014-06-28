accessing
test02StrongTextShouldBeBold
	| document node |
	document := HtmlDocument new.
	document parseContents: (ReadStream on: '<strong>strong text</strong>').
	node := document children first.
	self assert: (self styleResolver getStyle: #bold for: node) equals: true.