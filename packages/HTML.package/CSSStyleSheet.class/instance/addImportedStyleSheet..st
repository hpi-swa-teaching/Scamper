accessing
addImportedStyleSheet: anObject
	"Set the value of imports"

	self imports: (self imports copyWith: anObject)