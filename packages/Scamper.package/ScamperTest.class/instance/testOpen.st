initialize-release
testOpen

	|scamper|
	Transcript show: 'test05'.
	self shouldnt: [scamper := Scamper open] raise: Error.
	scamper delete.
