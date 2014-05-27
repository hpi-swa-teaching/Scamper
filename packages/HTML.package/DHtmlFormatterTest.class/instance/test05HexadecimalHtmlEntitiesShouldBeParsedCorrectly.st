testing
test05HexadecimalHtmlEntitiesShouldBeParsedCorrectly
	| document |
	document := HtmlDocument new.
	document parseContents: (ReadStream on:'&#x00A7;').
	document addToFormatter: (self htmlFormatter).
	self assert: '§' equals: self htmlFormatter text asString.