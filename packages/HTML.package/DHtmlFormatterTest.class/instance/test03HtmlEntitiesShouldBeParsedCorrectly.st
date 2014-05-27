testing
test03HtmlEntitiesShouldBeParsedCorrectly
	| document |
	document := HtmlDocument new.
	document parseContents: (ReadStream on:'&micro;').
	document addToFormatter: (self htmlFormatter).
	self assert: 'µ' equals: self htmlFormatter text asString.