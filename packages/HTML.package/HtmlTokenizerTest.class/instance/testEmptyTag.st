Running
testEmptyTag

	| tok tag |
	tok := HtmlTokenizer on: '<html />'.
	tag := tok next.
	
	self assert: (tag name = 'html').
	self assert: (tag isNegated not).
	self assert: (tok atEnd).