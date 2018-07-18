accessing
test05OutputShouldBeGeorgia
	| document node |
	document := HtmlDocument new.
	document parseContents: (ReadStream on: '<samp>sample output</samp>').
	node := document children first.
	self assert: (self styleResolver getStyle: #fontFamily for: node) 
		equals: (TextStyle named: 'Georgia').