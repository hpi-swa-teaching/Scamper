private-initialization
name: name0  negated: isNegated0 attribs: attribs0
	"initialize from the given attributes"
	name := name0.
	isNegated := isNegated0.
	attribs := attribs0 ifNil: [Dictionary new]