initialize-release
testDefaultBackgroundColor

	self assert: (scamper model defaultBackgroundColor = Color white).
	self assert: (scamper model backgroundColor = Color white)