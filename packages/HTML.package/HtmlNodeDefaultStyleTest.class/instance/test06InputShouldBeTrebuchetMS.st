accessing
test06InputShouldBeTrebuchetMS
	| document node |
	document := HtmlDocument new.
	document parseContents: (ReadStream on: '<kbd>sample input</kbd>').
	node := document children first.
	self assert: (self styleResolver getStyle: #fontFamily for: node) 
		equals: (TextStyle named: 'TrebuchetMS').