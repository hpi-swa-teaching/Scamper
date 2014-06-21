testing
test06NonHtmlEntitiesShouldBeReturned
	| document |
	document := HtmlDocument new.
	document parseContents: (ReadStream on:'&squeak;<!-- begin <Tag> end -->').
	document addToFormatter: (self htmlFormatter).
	self assert: '&squeak;' equals: self htmlFormatter text asString.
	self assert: '<!-- begin <Tag> end -->' equals: document children second rawContent.