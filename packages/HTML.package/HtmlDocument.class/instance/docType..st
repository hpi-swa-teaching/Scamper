accessing
docType: anObject
	"Set the value of docType"

	docType := anObject.
	self dtd: (HtmlDTD forDocType: anObject).