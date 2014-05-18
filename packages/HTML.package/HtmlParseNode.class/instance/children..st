accessing
children: anObject
	"Set the value of children"

	children := anObject.
	children do:[:ea | ea parent: self]