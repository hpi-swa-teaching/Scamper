printing
printOn: aStream

	| attrList |

	self attribute printOn: aStream.
	aStream nextPutAll: ' in: '.
	self parent prefix printOn: aStream.
	aStream nextPutAll: ' should be one of :'.
	attrList := self parent dtd attrListForTag: self parent dtdTag.
	(attrList attributes collect:[:ea | ea attribute]) printOn: aStream.	