initialize-release
test00Open

	| scamper |
	
	
	self shouldnt: [scamper := Scamper open] raise: Error.

	
