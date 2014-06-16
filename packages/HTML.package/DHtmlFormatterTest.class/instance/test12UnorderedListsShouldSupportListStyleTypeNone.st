testing
test12UnorderedListsShouldSupportListStyleTypeNone
	| document |
	document := HtmlDocument new.
	document parseContents: (ReadStream on:'<ul style="list-style-type:none"><li>First</li><li>Second</li><li>Third</li></ul>').
	document applyStyles.
	document addToFormatter: (self htmlFormatter).
	self assert:
	'First
Second
Third
'
equals: self htmlFormatter text asString.