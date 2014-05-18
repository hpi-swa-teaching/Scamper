accessing
printOn: aStream

	| attrList attr |

	"super printOn: aStream."
	self attribute printOn: aStream.
	aStream nextPutAll: ' in '.
	self parent prefix printOn: aStream.
	aStream nextPutAll: ' must be one of: '.
	attrList := self parent dtd attrListForTag: self parent dtdTag.
	attr := attrList attributeNamed: self attribute.
	attr type asString printOn: aStream.	