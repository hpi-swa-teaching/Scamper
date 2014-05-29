testing
test08OrderedListsShouldHaveCustomizableStartValues
	| document |
	document := HtmlDocument new.
	document parseContents: (ReadStream on:'<ol start="5"><li>First</li><li>Second</li></ol>').
	document addToFormatter: (self htmlFormatter).
	self assert:
	'5. First
6. Second
'
equals: self htmlFormatter text asString.