testing
test06NonHtmlEntitiesShouldBeReturned
	| document |
	document := HtmlDocument new.
	document parseContents: (ReadStream on:'&squeak;').
	document addToFormatter: (self htmlFormatter).
	self assert: '&squeak;' equals: self htmlFormatter text asString.