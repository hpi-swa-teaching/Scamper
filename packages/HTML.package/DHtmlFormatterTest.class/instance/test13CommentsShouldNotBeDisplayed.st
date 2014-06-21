testing
test13CommentsShouldNotBeDisplayed
	| document |
	document := HtmlDocument new.
	document parseContents: (ReadStream on: '<!-- Comment -->').
	document addToFormatter: (self htmlFormatter).
	self assert: '' equals: self htmlFormatter text asString.