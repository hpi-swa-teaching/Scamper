testing
test07HtmlEntitiesShouldBeParsedEverywhere
	| document |
	document := HtmlDocument new.
	document parseContents: 
		(ReadStream on: '<title>Test &auml;, &ouml; and &uuml;</title>',
			'<img src=''http:&#47;&#47;'' alt=''&#248; nothing''> </img>').
	self assert: '<title>Test ä, ö and ü</title>' equals: document children first asString.
	self assert: 'http://' equals: document children second src.
	self assert: 'ø nothing' equals: document children second alt.