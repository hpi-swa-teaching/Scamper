testing
test06NonHtmlEntitiesShouldBeReturned
	| document |
	document := HtmlDocument new.
	document parseContents: (ReadStream on:'&squeak;<!-- begin <Tag> end --> & text').
	document addToFormatter: (self htmlFormatter).
	self assert: '&squeak; & text' equals: self htmlFormatter text asString.
	self assert: '<!-- begin <Tag> end -->' equals: document children second rawContent.