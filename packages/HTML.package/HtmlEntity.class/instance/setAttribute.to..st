attributes
setAttribute: name  to: value
	"set the given attribute to the given value"
	attribs at: name asLowercase  put: value