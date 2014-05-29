testing
test04DecimalHtmlEntitiesShouldBeParsedCorrectly
	| document |
	document := HtmlDocument new.
	document parseContents: (ReadStream on:'&#182;').
	document addToFormatter: (self htmlFormatter).
	self assert: '¶' equals: self htmlFormatter text asString.