testing
test08OrderedListsShouldHaveNumbers
	| document |
	document := HtmlDocument new.
	document parseContents: (ReadStream on:'<ol><li>First</li><li>Second</li></ol>').
	document addToFormatter: (self htmlFormatter).
	self assert:
	'1. First
2. Second
'
equals: self htmlFormatter text asString.