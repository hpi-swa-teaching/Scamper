testing
test10OrderedListsShouldHaveCustomizableItemValues
	| document |
	document := HtmlDocument new.
	document parseContents: (ReadStream on:'<ol><li>First</li><li value="4">Second</li><li>Third</li></ol>').
	document addToFormatter: (self htmlFormatter).
	self assert:
	'1. First
4. Second
5. Third
'
equals: self htmlFormatter text asString.