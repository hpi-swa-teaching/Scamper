testing
test11OrderedListsShouldSupportListStyleTypeNone
	| document |
	document := HtmlDocument new.
	document parseContents: (ReadStream on:'<ol style="list-style-type:none"><li>First</li><li>Second</li><li>Third</li></ol>').
	document applyStyles.
	document addToFormatter: (self htmlFormatter).
	self assert:
	'First
Second
Third
'
equals: self htmlFormatter text asString.