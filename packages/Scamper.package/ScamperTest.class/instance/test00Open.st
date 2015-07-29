initialize-release
test00Open

	|scamper|
	
	"obsolete because of setup"
	
	self shouldnt: [scamper := Scamper open] raise: Error.
	scamper delete.
