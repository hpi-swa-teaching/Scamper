initialize-release
testOpen

	|scamper|
		
	self shouldnt: [scamper := Scamper open] raise: Error.
	scamper delete.
