accessing
test01EmphasizedTextShouldBeItalic
	| document node |
	document := HtmlDocument new.
	document parseContents: (ReadStream on: '<em>emphasized text</em>').
	node := document children first.
	self assert: (self styleResolver getStyle: #italic for: node) equals: true.